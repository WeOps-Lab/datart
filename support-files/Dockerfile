FROM ubuntu:20.04
RUN sed -i 's/archive.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list && \
    apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    apt-get clean
WORKDIR /apps
ADD ./datart-server-install.zip .
RUN unzip datart-server-install.zip && rm -Rf ./datart-server-install.zip
ENV TZ=Asia/Shanghai
#ENTRYPOINT java -server -Xms2G -Xmx2G -Dspring.profiles.active=config -Dfile.encoding=UTF-8 -cp "lib/*" datart.DatartServerApplication
