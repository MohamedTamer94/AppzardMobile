#!/data/data/com.termux/files/usr/bin/bash
set -e
cd build/war
bash ~/google-cloud-sdk/bin/java_dev_appserver.sh --port=8888 --address=0.0.0.0 .
