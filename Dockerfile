FROM centos:7
ENV project=OneCardSolution.war 
ADD ./src/jdk-8u201-linux-x64.tar.gz  /usr/local/
ADD ./src/apache-tomcat-8.5.43.tar.gz  /usr/local/
ADD ./src/$project /usr/local/apache-tomcat-8.5.43/webapps
ENV JAVA_HOME /usr/local/jdk1.8.0_211
ENV CLASSPATH $JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
ENV CATALINA_HOME /usr/local/apache-tomcat-8.5.43
ENV CATALINA_BASE /usr/local/apache-tomcat-8.5.43
ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/lib:$CATALINA_HOME/bin
EXPOSE 8080
CMD /usr/local/apache-tomcat-8.5.43/bin/catalina.sh run