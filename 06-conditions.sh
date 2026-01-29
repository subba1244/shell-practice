#!/bin/bash
NUMBER=$1
if [ $NUMBER -lt 10 ]; then
    echo "given number $NUMBER is lessthan 10"
elif [ $NUMBER -eq 10 ]; then
    echo "given number $NUMBER is equal to 10"
else
    echo "given number $NUMBER is greter than to 10"

fi

NUMBER1=$2
if [ (($NUMBER1 % 2)) -eq 0 ]; then
    echo " given number $NUMBER1 is even"
else
    echo " given number $NUMBER1 is odd"

fi