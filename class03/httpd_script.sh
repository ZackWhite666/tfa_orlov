#!/bin/sh
SERVICE='httpd' 
if  "$(whoami)" == "root" && pgrep $SERVICE
then
echo "$SERVICE service running, everything is fine"
else
echo "$SERVICE is not running!";
sleep 1;
echo "Run service httpd";
/home/user40/homework/materials/class03/src/tinyhttpd/tinyhttpd/./httpd && echo "finished Success" || echo "finished Failure"
fi
