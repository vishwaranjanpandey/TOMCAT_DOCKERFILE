FROM amazonlinux

RUN yum install java -y

RUN mkdir /opt/tomcat

WORKDIR /opt/tomcat

ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.89/bin/apache-tomcat-8.5.89.tar.gz .

RUN yum install tar -y

RUN yum install gzip -y
 
RUN tar -zxvf apache-tomcat-8.5.89.tar.gz

RUN mv apache-tomcat-8.5.89/* /opt/tomcat

EXPOSE 8080

CMD ["/opt/tomcat/bin/catalina.sh", "run"]


