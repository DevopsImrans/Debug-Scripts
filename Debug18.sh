#!/bin/bash

echo "Welcome $USER on $HOSTNAME."
echo "#######################################################"

FREERAM=$(free -m | grep Mem | awk '{print $4}')
LOA=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | gre '/dev/sda1' | awk '{print $4}')
Reep= "Rore"

echo "#######################################################"
echo "Available free RAM is $FREERAM MB"
echo "#######################################################"
echo "Current Load Average $LOAD"
echo "#######################################################"
echo "Free ROOT partiotion size is $ROOTFREE"
