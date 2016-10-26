FROM tomcat:8-jre8
ADD guvnor-5.5.0.Final.war /usr/local/tomcat/webapps/guvnor.war
ADD repository /usr/local/tomcat/repository