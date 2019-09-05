#!/bin/bash
 #production Servers 
 curl 10.198.14.47:9200/_cluster/health?pretty
for i in  10.198.14.47 10.198.6.47 10.198.13.152 10.198.13.209
do
echo $i
ssh -i ~/.ssh/eidev.pem ubuntu@$i "sudo crontab -l;crontab -l;df -h"
#ssh -i ~/.ssh/eidev.pem ubuntu@$i "df -h"

done
  
