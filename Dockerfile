FROM tomcat
COPY target/cloud7.war /usr/local/tomcat/webapps
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash

FROM nginx 
RUN apt-get update && apt-get install -y nginx
COPY cont.sh /usr/local/nginx/html
ENTRYPOINT service nginx start && bash
EXPOSE 80

FROM jenkins
USER root 
ENV JAVA_OPTS=" --Xmx4096"
ENV JENKINS_OPTS=" --handlerCounterMax=200"
RUN mkdir /var/lib/jenkins-log
EXPOSE 8080
