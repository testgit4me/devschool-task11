
FROM tomcat:jre8-alpine
RUN  rm -rf /usr/local/tomcat/webapps/ROOT
COPY target/hello-1.0.war /usr/local/tomcat/webapps/ROOT.war

http://3.136.19.126:8080/github-webhook/
