FROM vysnu96/my_repo:alptom
COPY sample.war /opt/tomcat/webapps/
EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]
