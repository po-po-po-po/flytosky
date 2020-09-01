package com.fly.sky.pythons;

import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.config.Registry;
import org.apache.http.config.RegistryBuilder;
import org.apache.http.conn.socket.ConnectionSocketFactory;
import org.apache.http.conn.socket.PlainConnectionSocketFactory;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.util.EntityUtils;
import org.springframework.stereotype.Component;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;

/**
 * description: HttpRequestUtils
 * date: 2020/8/15 16:06
 * author: wangzekun
 * version: 1.0
 */

@Component
public class HttpRequestUtils {


    private PoolingHttpClientConnectionManager poolingHttpClientConnectionManager;




    public static String sendGet(String flightNumber,String ip,Integer port)throws Exception{
        String content="";
        // 创建httpget实例
        HttpGet httpGet = new HttpGet("http://www.variflight.com/flight/fnum/"+flightNumber.trim()+".html?AE71649A58c77&fdate="+20201001);
        CloseableHttpClient client = setProxy(httpGet, ip, port);
        //设置请求头消息
        httpGet.setHeader("User-Agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36");
        // 执行http get请求  也可以使用psot
        CloseableHttpResponse response=client.execute(httpGet);
        // 获取返回实体
        if (response != null){
            HttpEntity entity = response.getEntity();
            if (entity != null){
                content= EntityUtils.toString(entity,"utf-8");
            }
        }
        //关闭response
        response.close();
        //关闭httpClient
        client.close();
        return content;
    }



    public static String sendGetProxy(String url,String ip,String port)throws Exception{
        String content="";
        // 创建httpget实例
        HttpGet httpGet = new HttpGet(url);
        CloseableHttpClient client = setProxy(httpGet, ip, Integer.parseInt(port));
        //设置请求头消息
        httpGet.setHeader("User-Agent","Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36");
        httpGet.setHeader("Referer","https://tool.133.cn/flight/");
        // 执行http get请求  也可以使用psot
        CloseableHttpResponse response=client.execute(httpGet);
        // 获取返回实体
        if (response != null){
            HttpEntity entity = response.getEntity();
            if (entity != null){
                content= EntityUtils.toString(entity,"utf-8");
            }
        }
        //关闭response
        response.close();
        //关闭httpClient
        client.close();
        return content;
    }

    public String sendGetNoProxy(String ip, String port, String url)throws Exception{
        //获取httpclient对象
        CloseableHttpClient closeableHttpClient = HttpClients.custom().setConnectionManager(this.poolingHttpClientConnectionManager).build();
        //创建http get请求对象 设置url地址
        HttpGet httpGet=new HttpGet(url);
        //发起请求 获取响应
        CloseableHttpResponse response =null;
        //设置请求头消息
        httpGet.setHeader("User-Agent","Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4168.2 Safari/537.36");
        httpGet.setHeader("Referer","https://tool.133.cn/flight/");
        response = closeableHttpClient.execute(httpGet);
        String content = "";
        // 获取返回实体
        if (response != null){
            HttpEntity entity = response.getEntity();
            if (entity != null){
                content= EntityUtils.toString(entity,"utf-8");
            }
        }
        //关闭response
        response.close();
        //关闭httpClient
        closeableHttpClient.close();
        return content;
    }


    /**
     * 向指定 URL 发送POST方法的请求
     *
     * @param url
     *            发送请求的 URL
     * @param param
     *            请求参数，请求参数应该是 name1=value1&name2=value2 的形式。
     * @return 所代表远程资源的响应结果
     */
    public static String sendPost(String ip,String port,String url, String param,Integer flag) {
        if(flag==0){
            //设置代理
            System.getProperties().setProperty("http.proxyHost", ip);
            System.getProperties().setProperty("http.proxyPort", port);
        }
        PrintWriter out = null;
        BufferedReader in = null;
        String result = "";
        try {
            URL realUrl = new URL(url);
            // 打开和URL之间的连接
            URLConnection conn = realUrl.openConnection();
            // 设置通用的请求属性
            conn.setRequestProperty("accept", "*/*");
            conn.setRequestProperty("connection", "Keep-Alive");
            conn.setRequestProperty("Content-Type","application/json");
            conn.setRequestProperty("user-agent",
                    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");
            // 发送POST请求必须设置如下两行
            conn.setDoOutput(true);
            conn.setDoInput(true);
            // 获取URLConnection对象对应的输出流
            out = new PrintWriter(conn.getOutputStream());
            // 发送请求参数
            out.print(param);
            // flush输出流的缓冲
            out.flush();
            // 定义BufferedReader输入流来读取URL的响应
            in = new BufferedReader(
                    new InputStreamReader(conn.getInputStream()));
            String line;
            while ((line = in.readLine()) != null) {
                result += line;
            }
        } catch (Exception e) {
            System.out.println("发送 POST 请求出现异常！" + e);
            e.printStackTrace();
        }
        // 使用finally块来关闭输出流、输入流
        finally {
            try {
                if (out != null) {
                    out.close();
                }
                if (in != null) {
                    in.close();
                }
            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        return result;
    }


    public String sendGetNoProxyNoSSL(String ip, String port, String url)throws Exception {
        String body = "";
        //采用绕过验证的方式处理https请求
        SSLContext sslcontext = createIgnoreVerifySSL();
        //设置协议http和https对应的处理socket链接工厂的对象
        Registry<ConnectionSocketFactory> socketFactoryRegistry = RegistryBuilder.<ConnectionSocketFactory>create()
                .register("http", PlainConnectionSocketFactory.INSTANCE)
                .register("https", new SSLConnectionSocketFactory(sslcontext))
                .build();
        PoolingHttpClientConnectionManager connManager = new PoolingHttpClientConnectionManager(socketFactoryRegistry);
        HttpClients.custom().setConnectionManager(connManager);
        //创建自定义的httpclient对象
        CloseableHttpClient client = HttpClients.custom().setConnectionManager(connManager).build();
        try {
            //创建get方式请求对象
            HttpGet get = new HttpGet(url);
            //指定报文头Content-type、User-Agent
            get.setHeader("Content-type", "application/x-www-form-urlencoded");
            get.setHeader("User-Agent", "Mozilla/5.0 (Windows NT 6.1; rv:6.0.2) Gecko/20100101 Firefox/6.0.2");
            //执行请求操作，并拿到结果（同步阻塞）
            CloseableHttpResponse response = client.execute(get);
            //获取结果实体
            HttpEntity entity = response.getEntity();
            if (entity != null) {
                //按指定编码转换结果实体为String类型
                body = EntityUtils.toString(entity, "UTF-8");
            }

            EntityUtils.consume(entity);
            //释放链接
            response.close();
            System.out.println("body:" + body);
        } finally {
            client.close();
        }
        return body;
    }

    /**
     * 设置代理get
     * @param httpGet
     * @param proxyIp
     * @param proxyPort
     * @return
     */
    public static CloseableHttpClient setProxy(HttpGet httpGet,String proxyIp,int proxyPort){
        // 创建httpClient实例
        CloseableHttpClient httpClient= HttpClients.createDefault();
        //设置代理IP、端口
        HttpHost proxy=new HttpHost(proxyIp,proxyPort,"http");
        //也可以设置超时时间   RequestConfig requestConfig = RequestConfig.custom().setProxy(proxy).setConnectTimeout(3000).setSocketTimeout(3000).setConnectionRequestTimeout(3000).build();
        RequestConfig requestConfig=RequestConfig.custom().setProxy(proxy).build();
        httpGet.setConfig(requestConfig);
        return httpClient;
    }


    /**
     * 绕过SSL验证
     *
     * @return
     */
    public  SSLContext createIgnoreVerifySSL() throws NoSuchAlgorithmException, KeyManagementException {
        SSLContext sc = SSLContext.getInstance("SSLv3");
        // 实现一个X509TrustManager接口，用于绕过验证，不用修改里面的方法
        X509TrustManager trustManager = new X509TrustManager() {
            @Override
            public void checkClientTrusted(
                    java.security.cert.X509Certificate[] paramArrayOfX509Certificate,
                    String paramString) throws CertificateException {
            }
            @Override
            public void checkServerTrusted(
                    java.security.cert.X509Certificate[] paramArrayOfX509Certificate,
                    String paramString) throws CertificateException {
            }
            @Override
            public java.security.cert.X509Certificate[] getAcceptedIssuers() {
                return null;
            }
        };
        sc.init(null, new TrustManager[] { trustManager }, null);
        return sc;
    }

}
