#!/bin/bash
 #production Servers 
for i in  10.199.18.92
#prod 10.198.4.136 10.198.6.74
do
echo $i
ssh -i ~/.ssh/seer.pem ubuntu@$i  '/opt/kafka/bin/kafka-run-class.sh kafka.tools.ConsumerOffsetChecker --group test --zkconnect 10.198.14.80:2181 --topic seer-tincan'
done
  
