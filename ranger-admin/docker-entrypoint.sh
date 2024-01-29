#!/bin/bash

RANGER_VERSION=3.0.0-SNAPSHOT

TAR_FILE=ranger-${RANGER_VERSION}-admin.tar.gz
DOWNLOAD_URL=https://github.com/aakashnand/trino-ranger-demo/releases/download/trino-ranger-demo-v1.0/${TAR_FILE}

# Check if the tar file exists
if [ -f "$TAR_FILE" ]; then
    echo "Tar file $TAR_FILE already exists."
else
    echo "Tar file $TAR_FILE does not exist. Downloading from $DOWNLOAD_URL..."
    wget $DOWNLOAD_URL -O $TAR_FILE
    echo "Download completed."
fi

tar xvf ranger-${RANGER_VERSION}-admin.tar.gz && \
cd /root/ranger-${RANGER_VERSION}-admin/ && \
cp /root/ranger-admin/install.properties /root/ranger-${RANGER_VERSION}-admin/ && \
./setup.sh && \
ranger-admin start && \
python -m venv /root/ranger-admin/.env && source /root/ranger-admin/.env/bin/activate && pip install -r /root/ranger-admin/requirement.txt
python /root/ranger-admin/trino_service_setup.py && \
tail -f /root/ranger-${RANGER_VERSION}-admin/ews/logs/ranger-admin-*-.log
