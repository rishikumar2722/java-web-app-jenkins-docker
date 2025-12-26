FROM tomcat:8.5-jdk8

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy WAR
COPY target/*.war /usr/local/tomcat/webapps/java-web-app.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
