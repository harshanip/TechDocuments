#!/bin/bash
 #production Servers 
 echo "Cheking Prod Servers"
for i in  10.198.14.235   10.198.14.69   10.198.14.199   10.198.7.33   10.198.7.223   10.198.8.68   10.198.4.56   10.198.4.188   10.198.4.223   
#STG cataract 10.199.26.212 10.199.26.178 10.199.24.88 10.199.16.183 10.199.30.186 10.199.30.60 10.199.30.168 10.199.18.72
do
echo $i
ssh -i ~/.ssh/seer.pem ubuntu@$i "df -h"
done
  
