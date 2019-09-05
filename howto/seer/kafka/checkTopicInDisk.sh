#!/bin/bash
 #production Servers 
for i in 10.198.4.136 10.198.6.74 10.198.6.76 10.198.8.19 10.198.8.44
do
echo $i
#ssh -i ~/.ssh/seer.pem ubuntu@$i "cd  /data/kafka;ls"
ssh -i ~/.ssh/seer.pem ubuntu@$i "df -h"
done
  
