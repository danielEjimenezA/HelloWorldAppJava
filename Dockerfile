FROM tomcat:10.0.10-jdk16-openjdk
WORKDIR /usr/local/tomcat
COPY /target/HelloWorldAppJava-1.0.war /usr/local/tomcat/webapps/
COPY Tomcat/tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
COPY Tomcat/docs /usr/local/tomcat/webapps/docs/
COPY Tomcat/examples /usr/local/tomcat/webapps/examples/
COPY Tomcat/host-manager /usr/local/tomcat/webapps/host-manager/
COPY Tomcat/manager /usr/local/tomcat/webapps/manager/
EXPOSE 8080
CMD ["catalina.sh", "run"]