FROM tomcat:7.0.91-jre7

ARG oviyam_version=2.8.1

RUN apt-get install curl unzip

WORKDIR  /

RUN mkdir ovitmp && \
    cd ovitmp && \
    curl https://sourceforge.net/projects/dcm4che/files/Oviyam/${oviyam_version}/Oviyam-${oviyam_version}-bin.zip > oviyam.zip && \
        unzip oviyam.zip
        
RUN rm -R /usr/local/tomcat/webapps/ROOT/
RUN cp /ovitmp/Oviyam-${oviyam_version}-bin/Oviyam-${oviyam_version}-bin/oviyam2.war /usr/local/tomcat/webapps/ROOT.war
RUN cp /ovitmp/Oviyam-${oviyam_version}-bin/tomcat/*.jar  /usr/local/tomcat/lib
COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml
