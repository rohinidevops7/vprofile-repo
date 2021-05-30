FROM tomcat:8.0
COPY target/vprofile-v1.war /usr/local/tomcat/webapps/
EXPOSE 8080

