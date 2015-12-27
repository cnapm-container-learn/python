#!/bin/bash

export TING_YUN_CONFIG_FILE=${TINGYUN_HOME}/tingyun.ini

tingyun-admin generate-config ${TINGYUN_LICENSE_KEY} ${TINGYUN_HOME}/tingyun.ini

sed -i "s#^app_name = .*#app_name = ${TINGYUN_APP_NAME}#g"  ${TINGYUN_HOME}/tingyun.ini

tingyun-admin run-program python ${TINGYUN_HOME}/server.py