FROM python:2.7
MAINTAINER wdxxs2z <jackyuan88726@gmail.com>

RUN apt-get update && apt-get install -y wget

ENV TINGYUN_AGENT_VERSION 0.7.7

ENV TINGYUN_LICENSE_KEY <%licenseKey%>

ENV TINGYUN_APP_NAME ApplicationName

ENV TINGYUN_HOME /tingyun

RUN mkdir ${TINGYUN_HOME}

RUN wget http://download.tingyun.com/agent/python/${TINGYUN_AGENT_VERSION}/tingyun-agent-python-${TINGYUN_AGENT_VERSION}.tar.gz && \
    tar zxf tingyun-agent-python-${TINGYUN_AGENT_VERSION}.tar.gz -C ${TINGYUN_HOME} && \
    python ${TINGYUN_HOME}/tingyun-agent-python-${TINGYUN_AGENT_VERSION}/setup.py install
    
ADD setenv.sh /setenv.sh

RUN chmod +x /setenv.sh

#Add a example app in your app dir default is /tingyun
ADD example/server.py ${TINGYUN_HOME}/server.py

EXPOSE 8080

CMD /setenv.sh