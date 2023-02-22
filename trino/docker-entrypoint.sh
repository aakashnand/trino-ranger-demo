#!/bin/bash
RANGER_VERSION=ranger-3.0.0-SNAPSHOT-trino-plugin-405-406
cd /root && \
curl https://github.com/aakashnand/trino-ranger-demo/releases/download/trino-ranger-demo-v1.0/${RANGER_VERSION}.tar.gz --output ${RANGER_VERSION}.tar.gz -L && 
mkdir -p /root/${RANGER_VERSION} && \
tar xvf ${RANGER_VERSION}.tar.gz -C /root/${RANGER_VERSION} --strip-components 1 && \
yes | cp -rf /root/install.properties /root/${RANGER_VERSION}/ && \
chown root:root -R /root/${RANGER_VERSION}/* && \
/root/${RANGER_VERSION}/enable-trino-plugin.sh && \
/usr/lib/trino/bin/run-trino
