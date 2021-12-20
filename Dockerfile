FROM ubuntu:20.04
MAINTAINER SATHYA
RUN yum -y update && yum install -y wget
RUN yum install -y java-1.8.0-openjdk
RUN wget "https://mirrors.estointernet.in/apache/tomcat/tomcat-8/v8.5.64/bin/apache-tomcat-8.5.64.tar.gz" -P /opt/			
RUN tar -xvf /opt/apache-tomcat-8.5.64.tar.gz -C /opt/
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64
COPY start.sh /tmp/
RUN chmod -R 755 /tmp/start.sh
EXPOSE 8080
ENTRYPOINT ["/tmp/start.sh"]