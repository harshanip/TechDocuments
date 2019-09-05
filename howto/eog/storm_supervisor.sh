#!/bin/bash
 #production Servers 
for i in 10.198.10.252 10.198.0.219 10.198.14.220 10.198.14.34 10.198.8.80 10.198.7.181 10.198.8.105 10.198.7.61
do
echo $i
ssh -i ~/.ssh/seer.pem ubuntu@$i "df -h;grep processor /proc/cpuinfo | wc -l;uptime" 
ssh -i ~/.ssh/seer.pem ubuntu@$i "hostname -f;sudo service storm-supervisor status"  
echo "-->"
done
  
