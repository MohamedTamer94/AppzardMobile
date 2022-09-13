#!/data/data/com.termux/files/usr/bin/bash
set -e
cd build/war
java -Dfile.encoding=UTF-8 -Djava.io.tmpdir=$HOME/tmp -classpath /data/data/com.termux/files/home/google-cloud-sdk/platform/google_appengine/google/appengine/tools/java/lib/appengine-tools-api.jar com.google.appengine.tools.development.DevAppServerMain --property=kickstart.user.dir=/data/data/com.termux/files/home/build/war --no_java_agent --promote_yaml --port=8888 --address=0.0.0.0 /data/data/com.termux/files/home/build/war/
