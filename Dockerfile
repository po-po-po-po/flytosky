
FROM openjdk:8-jdk-alpine
ENV JAVA_OPTS="-server -Xmx2g -Xms2g -Xmn1g -XX:MaxMetaspaceSize=256M -XX:MetaspaceSize=256M -XX:+UseG1GC -XX:MaxGCPauseMillis=100 -Dfile.encoding=UTF-8 -Duser.timezone=GMT+8"

#设置时区
RUN apk add --no-cache tzdata \
    && ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && echo "Asia/Shanghai" > /etc/timezone
ENV TZ Asia/Shanghai

VOLUME /tmp
ARG JAR_FILE
ADD ./target/${JAR_FILE}.jar /app/app.jar
RUN apk add --update ttf-dejavu fontconfig
WORKDIR /app/
ENTRYPOINT ["java","-jar","./app.jar"]
