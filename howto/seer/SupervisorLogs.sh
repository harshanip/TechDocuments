#!/bin/bash
 #production Servers 
for i in 10.198.10.252 10.198.14.220 10.198.14.34 10.198.7.181 10.198.7.61 10.198.8.105 10.198.8.80
#prodcution stormsuper 10.198.10.252 10.198.14.220 10.198.14.34 10.198.7.181 10.198.7.61 10.198.8.105 10.198.8.80
do
echo $i
ssh -i ~/.ssh/seer.pem ubuntu@$i "df -h"
done
  
