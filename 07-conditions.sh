#!/bin/bash

NUMBER=$(id -u)
if [ $NUMBER -ne 0 ]; then
    echo "ERROR ::This Should be Run in as Administartor Privileges only"
    exit 1

fi
VALIDATE(){
if [ $1 -ne 0 ]; then
    echo "ERROR:: Installing $2 is failure"
    exit 1
else
    echo "Installing $2 is SUCCESS"

fi


}

dnf install mysql -y
VALIDATE $? "mysql"
dnf install nginx -y
VALIDATE $? "nginx"

