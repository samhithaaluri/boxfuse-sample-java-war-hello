FROM tomcat:latest
COPY /var/lib/jenkins/workspace/war_deploy/target/*.war usr/local/tomcat/webapps/Hello.war
EXPOSE 8080
