package com.fly.sky.pythons;

import org.apache.http.*;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.protocol.HttpClientContext;
import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.LayeredConnectionSocketFactory;
import org.apache.http.conn.socket.PlainConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.pool.PoolStats;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.EntityUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.*;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/**
 * @Auther wangzekun
 * @Date 2021/7/21 15:09
 * @Description
 */
public class HmSyncHttpClientUtils {

    private static Logger logger = LoggerFactory.getLogger(HmSyncHttpClientUtils.class);
    private static final String DEFAULT_ENCODING = "UTF-8";// Charset.defaultCharset().name();
    private static int connectPoolTimeout = 2000;// 设定从连接池获取可用连接的时间
    private static int connectTimeout = 5000;// 建立连接超时时间
    private static int socketTimeout = 5000;// 设置等待数据超时时间5秒钟 根据业务调整
    private static int maxTotal = 100;// 连接池最大连接数
    private static int maxPerRoute = 10;// 每个主机的并发
    private static int maxRoute = 50;// 目标主机的最大连接数
    private static CloseableHttpClient httpClient = null;
    private final static Object syncLock = new Object();// 相当于线程锁,用于线程安全
    private static PoolingHttpClientConnectionManager cm = null;
    private static ScheduledExecutorService monitorExecutor;
    private static boolean isShowUsePoolLog = true;
    /**
     * 获取HttpClient对象
     *
     * @author
     * @date 2019年4月11日
     * @param url
     * @return
     */
    public static CloseableHttpClient getHttpClient(final String url) {
        String hostname = url.split("/")[2];
        int port = 80;
        if (hostname.contains(":")) {
            final String[] arr = hostname.split(":");
            hostname = arr[0];
            port = Integer.parseInt(arr[1]);
        }
        if (HmSyncHttpClientUtils.httpClient == null) {
            System.out.println("1****第一次创建httpClient");
            // 多线程下多个线程同时调用getHttpClient容易导致重复创建httpClient对象的问题,所以加上了同步锁
            synchronized (HmSyncHttpClientUtils.syncLock) {
                if (HmSyncHttpClientUtils.httpClient == null) {
                        maxTotal = HmSyncHttpClientUtils.maxTotal;
                        maxPerRoute = HmSyncHttpClientUtils.maxPerRoute;
                        maxRoute = HmSyncHttpClientUtils.maxRoute;
                    final Long timeout =  5000L;
                    System.out.println("2****第一次创建httpClient -->" + maxTotal);
                    // 开启监控线程,对异常和空闲线程进行关闭
                    HmSyncHttpClientUtils.monitorExecutor = Executors.newScheduledThreadPool(1);
                    HmSyncHttpClientUtils.monitorExecutor.scheduleAtFixedRate(new TimerTask() {
                        @Override
                        public void run() {
                            // 关闭异常连接
                            HmSyncHttpClientUtils.cm.closeExpiredConnections();
                            // 关闭空闲的连接
                            HmSyncHttpClientUtils.cm.closeIdleConnections(timeout, TimeUnit.MILLISECONDS);
                            final PoolStats poolStats = HmSyncHttpClientUtils.cm.getTotalStats();
                            final int usePoolNum = poolStats.getAvailable() + poolStats.getLeased()
                                    + poolStats.getPending();
                            if (HmSyncHttpClientUtils.isShowUsePoolLog) {
                                HmSyncHttpClientUtils.logger.info("***********》关闭异常+空闲连接！ 空闲连接:"
                                        + poolStats.getAvailable() + " 持久连接:" + poolStats.getLeased() + " 最大连接数:"
                                        + poolStats.getMax() + " 阻塞连接数:" + poolStats.getPending());
                            }
                            if (usePoolNum == 0) {
                                HmSyncHttpClientUtils.isShowUsePoolLog = false;
                            } else {
                                HmSyncHttpClientUtils.isShowUsePoolLog = true;
                            }
                        }
                    }, timeout, timeout, TimeUnit.MILLISECONDS);
                    HmSyncHttpClientUtils.httpClient = HmSyncHttpClientUtils.createHttpClient(maxTotal, maxPerRoute,
                            maxRoute, hostname, port);
                }
            }
        } else {
            System.out.println("3****获取已有的httpClient");
        }
        return HmSyncHttpClientUtils.httpClient;
    }
    /**
     * 创建HttpClient对象
     *
     * @author
     * @date 2019年4月11日
     * @param maxTotal
     *            最大连接数
     * @param maxPerRoute
     *            每个主机的并发
     * @param maxRoute
     *            目标主机的最大并发，如果只有一台，可以和maxTotal一样
     * @param hostname
     * @param port
     * @return
     */
    private static CloseableHttpClient createHttpClient(
            final int maxTotal,
            final int maxPerRoute,
            final int maxRoute,
            final String hostname,
            final int port) {
        final ConnectionSocketFactory plainsf = PlainConnectionSocketFactory.getSocketFactory();
        final LayeredConnectionSocketFactory sslsf = SSLConnectionSocketFactory.getSocketFactory();
        final Registry<ConnectionSocketFactory> registry = RegistryBuilder.<ConnectionSocketFactory> create()
                .register("http", plainsf).register("https", sslsf).build();
        HmSyncHttpClientUtils.cm = new PoolingHttpClientConnectionManager(registry);
        // 将最大连接数增加
        HmSyncHttpClientUtils.cm.setMaxTotal(maxTotal);
        // 将每个路由基础的连接增加
        HmSyncHttpClientUtils.cm.setDefaultMaxPerRoute(maxPerRoute);
        final HttpHost httpHost = new HttpHost(hostname, port);
        // 将目标主机的最大连接数增加
        HmSyncHttpClientUtils.cm.setMaxPerRoute(new HttpRoute(httpHost), maxRoute);
        // 请求重试处理
        final HttpRequestRetryHandler httpRequestRetryHandler = new HttpRequestRetryHandler() {
            @Override
            public boolean retryRequest(
                    final IOException exception,
                    final int executionCount,
                    final HttpContext context) {
                if (executionCount >= 2) {// 如果已经重试了2次，就放弃
                    HmSyncHttpClientUtils.logger.info("*******》重试了2次，就放弃");
                    return false;
                }
                if (exception instanceof NoHttpResponseException) {// 如果服务器丢掉了连接，那么就重试
                    HmSyncHttpClientUtils.logger.info("*******》服务器丢掉连接，重试");
                    return true;
                }
                if (exception instanceof SSLHandshakeException) {// 不要重试SSL握手异常
                    HmSyncHttpClientUtils.logger.info("*******》不要重试SSL握手异常");
                    return false;
                }
                if (exception instanceof InterruptedIOException) {// 超时
                    HmSyncHttpClientUtils.logger.info("*******》 中断");
                    return false;
                }
                if (exception instanceof UnknownHostException) {// 目标服务器不可达
                    HmSyncHttpClientUtils.logger.info("*******》目标服务器不可达");
                    return false;
                }
                if (exception instanceof ConnectTimeoutException) {// 连接被拒绝
                    HmSyncHttpClientUtils.logger.info("*******》连接超时被拒绝");
                    return false;
                }
                if (exception instanceof SSLException) {// SSL握手异常
                    HmSyncHttpClientUtils.logger.info("*******》SSL握手异常");
                    return false;
                }
                final HttpClientContext clientContext = HttpClientContext.adapt(context);
                final HttpRequest request = clientContext.getRequest();
                // 如果请求是幂等的，就再次尝试
                if (!(request instanceof HttpEntityEnclosingRequest)) {
                    return true;
                }
                return false;
            }
        };
        final CloseableHttpClient httpClient = HttpClients.custom().setConnectionManager(HmSyncHttpClientUtils.cm)
                .setRetryHandler(httpRequestRetryHandler).build();
        return httpClient;
    }
    private static void setPostParams(final HttpPost httpost, final Map<String, Object> params) {
        final List<BasicNameValuePair> nvps = new ArrayList<BasicNameValuePair>();
        final Set<String> keySet = params.keySet();
        for (final String key : keySet) {
            nvps.add(new BasicNameValuePair(key, params.get(key).toString()));
        }
        try {
            httpost.setEntity(new UrlEncodedFormEntity(nvps, HmSyncHttpClientUtils.DEFAULT_ENCODING));
        } catch (final Exception e) {
            e.printStackTrace();
        }
    }
    private static void setParams(final HttpRequestBase httpbase, final Map<String, String> params) {
        try {
            if (params != null && params.size() > 0) {
                final List<BasicNameValuePair> nvps = new ArrayList<BasicNameValuePair>();
                final Set<String> keySet = params.keySet();
                for (final String key : keySet) {
                    nvps.add(new BasicNameValuePair(key, params.get(key).toString()));
                }
                final String param = EntityUtils
                        .toString(new UrlEncodedFormEntity(nvps, HmSyncHttpClientUtils.DEFAULT_ENCODING));
                httpbase.setURI(new URI(httpbase.getURI().toString() + "?" + param));
            }
        } catch (final Exception e) {
            e.printStackTrace();
        }
    }
    private static String httpMethod(
            final HttpRequestBase httpBase,
            final String url,
            final Map<String, String> params) {
        CloseableHttpResponse response = null;
        HttpEntity entity = null;
        try {
            final RequestConfig requestConfig = RequestConfig.custom()
                    .setConnectionRequestTimeout(HmSyncHttpClientUtils.connectPoolTimeout)// 设定从连接池获取可用连接的时间
                    .setConnectTimeout(HmSyncHttpClientUtils.connectTimeout)// 设定连接服务器超时时间
                    .setSocketTimeout(HmSyncHttpClientUtils.socketTimeout)// 设定获取数据的超时时间
                    .build();
            httpBase.setConfig(requestConfig);
            // httpBase.setHeader("Connection", "close");
            HmSyncHttpClientUtils.setParams(httpBase, params);
            response = HmSyncHttpClientUtils.getHttpClient(url).execute(httpBase, HttpClientContext.create());
            entity = response.getEntity();
            return EntityUtils.toString(entity, HmSyncHttpClientUtils.DEFAULT_ENCODING);
        } catch (final Exception e) {
            e.printStackTrace();
        } finally {
            try {
                // 关闭HttpEntity的流，如果手动关闭了InputStream in = entity.getContent();这个流，也可以不调用这个方法
                EntityUtils.consume(entity);
                if (response != null) {
                    response.close();
                }
            } catch (final Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }
    /**
     * 模拟HTTPPOST提交
     *
     * @author
     * @date 2019年4月8日
     * @param url
     * @param params
     * @return
     */
    public static String httpPost(final String url, final Map<String, String> params) {
        final HttpPost httpPost = new HttpPost(url);
        return HmSyncHttpClientUtils.httpMethod(httpPost, url, params);
    }
    /**
     * 模拟HTTPGET
     *
     * @author
     * @date 2019年4月8日
     * @param url
     * @return
     */
    public static String httpGet(final String url) {
        final HttpGet httpGet = new HttpGet(url);
        return HmSyncHttpClientUtils.httpMethod(httpGet, url, null);
    }

}
