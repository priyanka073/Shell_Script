#!/bin/bash

#Purpose: To find file is exist
#Author: Priyanka Yadav
#Date: 2nd April 2023

read -p "Enter file name " filename

if [ -f $filename ]
then
  echo "${filename} exist"
else
  echo "${filename} does not exist"
fi  