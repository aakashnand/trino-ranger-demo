#!/bin/bash

RANGER_VERSION=3.0.0-SNAPSHOT # Supported values 2.1.0 and 3.0.0-SNAPSHOT

wget https://github.com/aakashnand/trino-ranger-demo/releases/download/trino-ranger-demo-v1.0/ranger-${RANGER_VERSION}-admin.tar.gz && \
tar xvf ranger-${RANGER_VERSION}-admin.tar.gz && \
cd /root/ranger-${RANGER_VERSION}-admin/ && \
cp /root/install.properties /root/ranger-${RANGER_VERSION}-admin/ && \

if [ "$RANGER_VERSION" == "3.0.0-SNAPSHOT" ]
then
echo 'RANGER_ADMIN_LOG4J_CONF_FILE=$PWD/ews/webapp/WEB-INF/log4j.properties' >> /root/ranger-${RANGER_VERSION}-admin/install.properties
fi

./setup.sh && \
ranger-admin start && \
tail -f /root/ranger-${RANGER_VERSION}-admin/ews/logs/ranger-admin-*-.log