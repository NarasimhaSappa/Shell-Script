#!/bin/bash

USERID=$(id -u)

#This function should validate and previous command inform to user it is sucess or falure

VALIDATE(){
            #$1--it will an argument
if [ $1 -ne 0]

then
    echo "$2.....FAILURE"
else
    echo "$2.....SUCCESS"       
fi

}

if [ $? -ne 0 ]

then 
    echo "Installation of My sql is error"
    exit 1
else
    echo "Installation my sql is success"
fi

# Installatio of postfix
yum install postfix -y

if [ $? -ne 0 ]
then
    echo "installation postfix is error"
    exit1
else
    echo "Installlation postfix is success"
fi