#!/bin/bash
 #production Servers 
for i in  10.199.24.190 10.199.18.216 10.199.28.91 10.199.20.35
do
echo $i
ssh -i ~/.ssh/seer.pem ubuntu@$i "df -h"
#ssh -i ~/.ssh/seer.pem ubuntu@$i "nodetool status"
done
  
