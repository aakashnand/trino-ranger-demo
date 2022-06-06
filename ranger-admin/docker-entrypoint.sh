#!/bin/bash

RANGER_VERSION=2.1.0

#wget https://github.com/aakashnand/trino-ranger-demo/releases/download/trino-ranger-demo-v1.0/ranger-${RANGER_VERSION}-admin.tar.gz && \
tar xvf ranger-${RANGER_VERSION}-admin.tar.gz && \
cd /root/ranger-${RANGER_VERSION}-admin/ && \
cp /root/install.properties /root/ranger-${RANGER_VERSION}-admin/ && \
./setup.sh && \
ranger-admin start && \
tail -f /root/ranger-${RANGER_VERSION}-admin/ews/logs/ranger-admin-*-.log
