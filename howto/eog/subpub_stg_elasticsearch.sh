#!/bin/bash
 #production Servers 
 curl  	10.199.0.172:9200/_cluster/health?pretty
for i in 10.199.0.172 10.199.14.230 10.199.8.239 10.199.15.176
do
echo $i
 ssh -i ~/.ssh/eidev.pem ubuntu@$i "df -h" 
 ssh -i ~/.ssh/eidev.pem ubuntu@$i "ls /usr/share/elasticsearch/plugins" 
echo "-->"
done
  
