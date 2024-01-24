#!/bin/bash

# This program goal is install to my sql

USERID=$(id= -u)

if [ USERID -ne 0 ]

then 
    echo "ERROR:Please run this root-access"
#else
    #echo "INFO:: You are root user"
fi

yum install mysql -y

if [ $? -ne 0 ]

then 
    echo "Installation of My sql is error"
    exit 1
else
    echo "Installation my sql is sucess"
fi
