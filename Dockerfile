FROM tomcat:alpine

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/*"]
COPY ./build/libs/docker-tomcat-java-example.war /usr/local/tomcat/webapps/webapp.war
