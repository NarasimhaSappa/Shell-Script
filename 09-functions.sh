#!/bin/bash
DATE=$(date +%F)
LOGSDIR=/home/centos/shellscript-logs
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

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

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "ERROR::Please run with root user"
  exit1
# else
#   echo "you are the root user"
fi

# This is  our responsibility Again to check installation is success or not
yum install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MySQL"
yum install postfix -y &>>$LOGFILE
VALIDATE $? "Installing Postfix"