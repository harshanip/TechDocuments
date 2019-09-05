#!/bin/bash
 #production Servers 
for i in  10.198.14.235 10.198.14.69 10.198.14.199 10.198.7.33 10.198.7.223 10.198.8.68 10.198.4.56 10.198.4.188 10.198.4.223

do
echo $i
 
ssh -i ~/.ssh/seer.pem ubuntu@$i 'hostname -f; cd  /var/log/cataract/; head -n 1  `ls  |grep -v gz` ;grep "exception trying to publish message"  `ls  |grep -v gz` '
 
echo "-->"
done
  
