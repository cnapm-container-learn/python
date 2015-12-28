#!/bin/bash

blueware-admin generate-config ${ONEAPM_LICENSE_KEY} ${ONEAPM_HOME}/blueware.ini

sed -i "s#^app_name = .*#app_name = ${ONEAPM_APP_NAME}#g" ${ONEAPM_HOME}/blueware.ini

blueware-admin run-program python ${ONEAPM_HOME}/server.py
