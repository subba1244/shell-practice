#!/bin/bash

NUMBER=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
if [ $NUMBER -ne 0 ]; then
    echo "ERROR ::This Should be Run in as Administartor Privileges only"
    exit 1

fi
VALIDATE(){
if [ $1 -ne 0 ]; then
    echo "ERROR:: Installing $2 is $R--failure--$N"
    exit 1
else
    echo "Installing $2 is $G--SUCCESS--$N"

fi


}
dnf list installed mysql
if [$? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "mysql"
else
    echo " my sql is already installed $G--skipping--$N"
fi

dnf  list installed nginx
if [$? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "nginx"
else
    echo " nginx is already installed $G--skipping--$N"

fi