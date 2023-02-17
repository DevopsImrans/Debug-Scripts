#!/bin/bash

if [ $# -eq 1 ]; then
    if [ $1 -gt 0 ]; then
        num=$1
		two=3
        revNum=0
        while [ $num -ne 0 ]
        d
            testnum=$(( $num %  10 ))
            rvNum=$(( $revNum * 10 + $testnum ))
            num=$(( $nu / 10 ))
        done
        echo "Reverse Number:  $revNum of $1"
    else
        echo "Input is less than 0, retry with a different number."
    i
else
    echo "ERROR: Retry with one parameter."
fi