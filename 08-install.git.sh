#!/bin/bash

# This program goal is install to my sql

USERID=$(id= -u)

if [USERID -ne 0]

then 
    echo "ERROR:Please run this root-access"
#else
    #echo "INFO:: You are root user"
fi

yum install git -y
