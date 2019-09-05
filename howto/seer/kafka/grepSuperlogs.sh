#!/bin/bash
 #production Servers 
for i in 10.199.22.56 10.199.26.91 10.199.24.187 10.199.26.221 10.199.16.233 10.199.18.18 10.199.28.69 10.199.18.32 10.199.30.204 
#staging 10.199.22.56 10.199.26.91 10.199.24.187 10.199.26.221 10.199.16.233 10.199.18.18 10.199.28.69 10.199.18.32 10.199.30.204 
#  10.198.10.252  10.198.0.219 10.198.14.220 10.198.14.34 10.198.8.80 10.198.7.181 10.198.8.105 10.198.7.61 
do
echo $i
# ssh -i ~/.ssh/seer.pem ubuntu@$i "grep -n 2016 /usr/lib/storm/logs/worker*.log"
 #ssh -i ~/.ssh/seer.pem ubuntu@$i "grep 'seertesthe1' /usr/lib/storm/logs/worker*"
  ssh -i ~/.ssh/seer.pem ubuntu@$i "ls /usr/lib/storm/logs/worker*"
 
#ssh -i ~/.ssh/seer.pem ubuntu@$i 'grep  -n   " Failed to send messages after 3 tries" /usr/lib/storm/logs/worker*'
#ssh -i ~/.ssh/seer.pem ubuntu@$i 'grep  -n   " ERROR" /usr/lib/storm/logs/worker*.log|grep 2016'
done
  
