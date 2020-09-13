FROM tomcat:alpine

RUN ["rm", "-fr", "/usr/local/tomcat/webapps/*"]
COPY ./build/libs/* /usr/local/tomcat/webapps/webapp.war
