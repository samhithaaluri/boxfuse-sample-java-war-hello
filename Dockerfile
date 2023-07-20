FROM tomcat:latest
COPY **/target/*.war usr/local/tomcat/webapps/Hello.war
EXPOSE 8080
