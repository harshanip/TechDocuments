#!/bin/bash
 #production Servers 
for i in   10.199.0.172    10.199.14.230  10.199.8.239 10.199.15.176 
#staging prod   10.199.0.172    10.199.14.230 10.199.6.104 10.199.8.239 10.199.15.176 
do
echo $i
ssh -i ~/.ssh/eidev.pem ubuntu@$i "df -h"
curl $i:9200/_cluster/health?pretty
done
  
