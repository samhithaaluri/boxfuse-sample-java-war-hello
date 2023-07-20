FROM tomcat:latest
COPY "/opt/tomcat/webapps/*.war" "usr/local/tomcat/webapps"
EXPOSE 8080
