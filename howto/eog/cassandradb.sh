#!/bin/bash
 #production Servers 
for i in  10.198.6.25 10.198.6.125 10.198.2.87 10.198.2.138 10.198.2.28 10.198.4.192 10.198.4.165
do
echo $i
ssh -i ~/.ssh/seer.pem ubuntu@$i "df -h"
ssh -i ~/.ssh/seer.pem ubuntu@$i "nodetool status"
done
  
