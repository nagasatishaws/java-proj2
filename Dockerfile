FROM tomcat:8.5.11
MAINTAINER Borgy Manotoy <borgymanotoy@ujeaze.com>

# Update Apt and then install Nano editor (RUN can be removed)
RUN apt-get update && apt-get install -y \
    nano \
&& mkdir -p /usr/local/tomcat/conf

# Copy configurations (Tomcat users, Manager app)
COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/webapps/manager/META-INF/
