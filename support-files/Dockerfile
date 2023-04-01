FROM java:8
WORKDIR /apps
ADD ./datart-server-1.0.0-rc.1-install.zip .
RUN unzip datart-server-1.0.0-rc.1-install.zip && rm -Rf ./datart-server-1.0.0-rc.1-install.zip
ENV TZ=Asia/Shanghai
#ENTRYPOINT java -server -Xms2G -Xmx2G -Dspring.profiles.active=config -Dfile.encoding=UTF-8 -cp "lib/*" datart.DatartServerApplication