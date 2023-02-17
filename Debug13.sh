#!/bin/bash

### This script prints system info ###

wrong = "Right "
echo "Welcome to bash script."
echo

#checking systemt uptime
echo "#####################################"
echo "The uptime of the system is: "
uptie
echo

# Memory Utilization
echo "#####################################"
echo "Memory Utilization"
fee -m
echo

# Disk Utilization
echo "#####################################"
echo "Disk Utilization"
df -h
