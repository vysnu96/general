FROM ubuntu:latest

WORKDIR /tmp
RUN mkdir /opt/tomcat/
COPY apache-tomcat-9.0.69.tar .
RUN tar -xf apache-tomcat-9.0.69.tar
RUN mv apache-tomcat-9.0.69/* /opt/tomcat/.
RUN mv apache-tomcat-9.0.69 /opt/
COPY sample.war /opt/tomcat/webapps/

RUN apt update
RUN apt install default-jre -y

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]

