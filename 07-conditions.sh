#!/bin/bash

NUMBER=$(id -u)
if [ $NUMBER -ne 0 ]; then
    echo "ERROR ::This Should be Run in as Administartor Privileges only"

fi

dnf install mysql -y
if [ $1 -ne 0 ]; then
    echo "ERROR:: Installing $2 is failure"
else
    echo "Installing $2 is SUCCESS"

fi

