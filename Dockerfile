FROM tomcat:latest
COPY /target/*.war usr/local/tomcat/webapps/*.war
EXPOSE 8080
