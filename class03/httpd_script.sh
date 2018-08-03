#!/bin/bash
SERVICE='httpd'
dirhttpd='/home/user40/homework/materials/class03/src/tinyhttpd/tinyhttpd/httpd'

if [[ "$(whoami)" == "root" ]] && pgrep -x $SERVICE
then
  echo "$SERVICE service running, everything is fine"
else
  echo "$SERVICE is not running!"
  echo "Run service httpd"
$dirhttpd
if [[ $? -eq 0 ]]
then
  echo "Started success"
else
  echo "Started failure" >&2
  exit 1
fi
fi
