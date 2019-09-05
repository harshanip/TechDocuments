#!/bin/bash
 #production Servers 


for i in  10.198.10.147 10.198.14.151 10.198.14.193 10.198.7.97 10.198.7.63 10.198.7.56 
do
echo $i
ssh -i ~/.ssh/seer.pem ubuntu@$i "df -h" 
echo "-->"
done
  
for i in  10.198.10.147 10.198.14.151 10.198.14.193 10.198.7.97 10.198.7.63 10.198.7.56 
do
echo $i 
echo ruok |nc $i 2181
echo "-->"
done
