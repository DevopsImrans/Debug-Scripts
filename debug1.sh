#!/bin/bash

if [ $# != 0 ]; then
    len=`echo $@ | wc -c`
    len=`expr $len - 1`
	debug=1
    strev=""
    while test $len -gt 0
    do
        strrev1=`echo $@ | cut -c$len`
        strrev=$strrev$strrev1
        len=`expr $len - 1`
    do
    echo $strrev
else
    echo "ERROR: Retry with a list of strings."
fi