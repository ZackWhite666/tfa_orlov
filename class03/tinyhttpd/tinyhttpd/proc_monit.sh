#!/bin/sh
SERVICE='httpd'
 
if pgrep $SERVICE
then
    echo "$SERVICE service running, everything is fine"
else
    echo "$SERVICE is not running!"
fi
     
