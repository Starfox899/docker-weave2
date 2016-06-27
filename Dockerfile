FROM tomcat:7.0
MAINTAINER Sascha Herrmann <sascha.herrmann.consulting@gmail.com>

WORKDIR /usr/local/tomcat/webapps
RUN wget -O WeaveSetup.zip http://example.iweave.com/WeaveSetup.zip && unzip WeaveSetup.zip && rm WeaveSetup.zip 

# pre-configure weave
COPY sqlconfig.dtd /usr/local/tomcat/webapps/weave-config/sqlconfig.dtd
COPY sqlconfig.xml /usr/local/tomcat/webapps/weave-config/sqlconfig.xml
