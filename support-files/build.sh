source /etc/profile

mvn clean package -Dmaven.test.skip=true
mv ./datart-server-*.zip ./support-files/datart-server-install.zip

cd ./support-files
docker build -t ccr.ccs.tencentyun.com/megalab/datart .

docker push ccr.ccs.tencentyun.com/megalab/datart