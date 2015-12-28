FROM python:2.7
MAINTAINER wdxxs2z <jackyuan88726@gmail.com>

ENV ONEAPM_LICENSE_KEY <%licenseKey%>

ENV ONEAPM_APP_NAME ApplicationName

ENV ONEAPM_HOME /OneAPM

ENV BLUEWARE_CONFIG_FILE /OneAPM/blueware.ini

RUN mkdir ${ONEAPM_HOME}

RUN pip install -i http://pypi.oneapm.com/simple --upgrade blueware --trusted-host pypi.oneapm.com
    
ADD setenv.sh /setenv.sh

RUN chmod +x /setenv.sh

#Add a example app in your app dir default is /tingyun
ADD example/* /OneAPM/

EXPOSE 8000

CMD /setenv.sh
