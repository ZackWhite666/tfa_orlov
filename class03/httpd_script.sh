#!/bin/bash
SERVICE='httpd'
dirhttpd='/home/user40/homework/materials/class03/src/tinyhttpd/tinyhttpd/httpd'

if [[ "$(whoami)" == "root" ]] && pgrep -x $SERVICE
then
 echo "$SERVICE service running, everything is fine"
else
 echo "$SERVICE is not running!"
 sleep 1;
 echo "Run service httpd"
 $dirhttpd && echo "finished Success" || echo "finished Failure"
if [[ "$?" != 0 ]]
 then echo "Succes :)"
else
 exit 1
fi
fi
