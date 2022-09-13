#!/data/data/com.termux/files/usr/bin/bash
set -e
echo "Installing Appzard.."
echo "Installing gcloud"
pkg upgrade -y
apt-get -qq --force-yes -y install python openssl
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-401.0.0-linux-x86_64.tar.gz
tar -xf google-cloud-cli-401.0.0-linux-x86.tar.gz
bash google-cloud-sdk/install.sh -q
bash google-cloud-sdk/bin/gcloud install app-engine-java -y -q
