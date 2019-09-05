#!/bin/bash
 #production Servers 
for i in 10.198.6.74 10.198.14.145 10.198.8.19 10.198.8.44 10.198.4.136
#  10.198.10.252  10.198.0.219 10.198.14.220 10.198.14.34 10.198.8.80 10.198.7.181 10.198.8.105 10.198.7.61 
do
echo $i
 ssh -i ~/.ssh/seer.pem ubuntu@$i "egrep 'ERROR' /var/log/kafka/kafka.log |grep 2016-08"
done
  
