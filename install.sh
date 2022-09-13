#!/data/data/com.termux/files/usr/bin/bash
set -e
echo "Installing Appzard.."
echo "$1"
if [ "$1" = "gcloud" ]; then
	echo "Installing Java"
	apt-get -y upgrade
    apt-get -y install python openssl unzip wget
	curl https://raw.githubusercontent.com/MasterDevX/Termux-Java/master/installjava | bash
	echo "Installing gcloud"
	if ! [ -e "google-cloud-cli-401.0.0-linux-x86.tar.gz" ]; then
	curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-401.0.0-linux-x86_64.tar.gz
	tar -xf google-cloud-cli-401.0.0-linux-x86.tar.gz
	bash google-cloud-sdk/install.sh -q
	fi
elif [ "$1" = "appzardFiles" ]; then
	echo "Installing appengine components"
	bash google-cloud-sdk/bin/gcloud components install app-engine-java -q
	if ! [ -e "build.zip" ]; then
	echo "Downloading appzard Build Files"
	curl "https://www.googleapis.com/drive/v3/files/1wobXDJaz9M2tYW87wd-SMe0O91xY72u-?alt=media&key=AIzaSyCuQUoy9CWSIx5LbLg3zCahsDgSMyV099w" > build.zip
	unzip -q -o build.zip
	echo "Done!"
	[ -d ~/tmp ] || mkdir ~/tmp
	fi
fi
