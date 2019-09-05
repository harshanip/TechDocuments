#!/bin/bash
 #production Servers 
 curl 10.198.6.235:9200/_cluster/health?pretty
for i in  10.198.6.235 10.198.6.41 10.198.6.124 10.198.8.89 10.198.8.219 10.198.4.175 10.198.4.61 10.198.4.37 
do
echo $i
 #ssh -i ~/.ssh/seer.pem ubuntu@$i "df -h" 
 ssh -i ~/.ssh/seer.pem ubuntu@$i "ls /usr/share/elasticsearch/plugins" 
echo "-->"
done
  
