# Build Maven project
FROM maven:3.8.6-openjdk-11-slim AS build
COPY server /home/app/server
COPY webapp /home/app/webapp
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package

# Pull base image 
FROM tomcat:8-jre8 
MAINTAINER "alby11@duck.com" 
COPY --from=build /home/app/webapp/target/webapp.war /usr/local/tomcat/webapps
# COPY ./webapp.war /usr/local/tomcat/webapps
# COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
# COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
