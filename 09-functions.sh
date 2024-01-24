#!/bin/bash
DATE=$(date +%F)
LOGSDIR=/home/centos/shellscript-logs
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

USERID=$(id -u)
#This function should validate and previous command inform to user it is sucess or falure

VALIDATE() {

#It will give arugumnets
    if [ $1 -ne 0 ]
then
    echo "$2... $R FAILURE $N"
    exit1
else
    echo "$2... $G SUCCESS $N"
fi
}

R="\e[31m" # RED COLOUR
G="\e[32m" # GREEN COLOUR                                          
N="\e[0m"  # Normal clour

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "ERROR::Please run with root user"
  exit1
fi
# else
#   echo "you are the root user"

# This is  our responsibility Again to check installation is success or not
yum install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MySQL"
yum install postfix -y &>>$LOGFILE
VALIDATE $? "Installing Postfix"