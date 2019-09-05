#!/bin/bash
 #production Servers 
for i in  10.198.0.193 10.198.7.81
do
echo $i
ssh -i ~/.ssh/seer.pem ubuntu@$i "df -h" 
ssh -i ~/.ssh/seer.pem ubuntu@$i "sudo service storm-nimbus status" 
ssh -i ~/.ssh/seer.pem ubuntu@$i "sudo service storm-ui status" 
echo "-->"
done
  
