#!/bin/bash

echo -e "=============================================================="
echo -e "            \n *******Shell Script Assignment******** \n          "
echo "=======================***************========================"


echo -e "=============================================================="
echo -e "\nWelcome to Shell script project, : $(whoami)\n"
echo "=======================***************========================"


#show date and time
echo -e "=============================================================="
echo -e "\nCurrent date and time is: " && date | awk '{print $3 "-" $2 "-" $6}' && date| awk '{print $4}'
echo "=======================***************========================"


#show uptime and last login
echo -e "=============================================================="
echo -e "\nServer uptime is :"
uptime

echo "Last Login details"
last -a | head -3
echo -e "\n=======================***************========================"


#show disk utilization
echo -e "=============================================================="
echo -e "\nServer Disk Utilization :"
df -h | xargs | awk '{print "Free Disk Space is : " $11}'
df -h  | xargs | awk '{print "Total Disk Space is : " $9}'
echo -e "\n=======================***************========================"



#show ram utilization
echo -e "=============================================================="
echo -e "\nRAM(Memory) Utilization : "
free -h | xargs | awk '{print "Free Memory is : "$10}'
free -h | xargs | awk '{print "Total Memory is : "$8}'
echo -e "\n=======================***************========================"



#show top cpu process
echo -e "=============================================================="
echo -e "\nTop CPU Processes running :"
top -b | head -5
echo -e "\n=======================***************========================"

                                                          