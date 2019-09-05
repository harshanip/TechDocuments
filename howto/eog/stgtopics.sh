#!/bin/bash
 #production Servers 
for i in 10.199.16.4
#prodcution list10.198.4.136 10.198.6.74 10.198.14.145 10.198.8.19 10.198.8.44
do
echo $i
ssh -i ~/.ssh/seer.pem ubuntu@$i "sh /opt/kafka/bin/kafka-list-topic.sh --zookeeper  10.199.16.7 10.199.18.13 10.199.23.119"
done
  
