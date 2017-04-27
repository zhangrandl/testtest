docker stop `docker ps | grep test|awk '{print $1}'`
docker rm `docker ps -a | grep test|awk '{print $1}'`
docker rmi `docker images | grep none | awk '{print $3}'`
docker build -t test:1.0 /home/jenkins/test
docker run -v /var/log/tomcat/test/://usr/local/tomcat/logs/ -d -it -p 8081:8080 test:1.0
