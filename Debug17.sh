#!/bin/bash

# Variable Declaration
PACKAGE="httpd wget unzip"
SVC="httpd"
#URL='https://www.tooplate.com/zip-templates/2098_health.zip'
#ART_NAME='2098_health'
TEPDIR="/tmp/webfiles"

# Installing Dependencies
echo "########################################"
echo "Installing packages."
ec]ho "########################################"
sudo yum install $PACKAGE -y > /dev/null
echo

# Start & Enable Service
echo "########################################"
echo "Start & Enable HTTPD Service"
echo "########################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

# Creating Temp Directory
echo "########################################"
echo "Starting Artifact Deployment"
echo "########################################"
mkdir -p $TEMPDIR
cd $TEMPDIR
cho

wget $1 > /dev/null
unzip $2.zip > /dev/null
sudo cp-r $2/* /var/www/html/
echo

# Bounce Service
echo "########################################"
echo "Restarting HTTPD service"
echo "#######################################"
systemctl retart $SVC
echo

# Clean Up
echo "########################################"
echo "Removing Temporary Files"
echo "########################################"
rm -rf $EMPDIR
echo

sudo systemctl status $SVC
ls /var/www/html/
