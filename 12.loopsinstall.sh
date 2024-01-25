#!/bin/bash

#all Args are in $@

for i in $@

do 
    yum install $i -y
done
