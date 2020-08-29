#!/bin/sh

PROC_NAME=testc
PS=/bin/ps
GREP=/bin/grep
AWK=/bin/awk
LOG=/home/root/testmon.log

while true
do
  $PS | $GREP $PROC_NAME | $GREP -v grep | $GREP -v tail
  FOUND=$?
  if [ $FOUND -ne 0 ]
  then
      sleep 5
      DATE=$(date)
      echo "${DATE}:  testc is not running, restarting now" >> $LOG
      systemctl start dnsmasq
      systemctl start hostapd
      systemctl start testc
      echo "${DATE}: testc started successfully!" >> $LOG
  fi
sleep 1
done

