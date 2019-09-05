#!/bin/bash
 
ssh -i ~/.ssh/seer.pem ubuntu@10.199.16.4 	'date;/opt/kafka/bin/kafka-run-class.sh kafka.tools.ConsumerOffsetChecker --group test --zkconnect 10.199.16.7:2181,10.199.18.13:2181 --topic seer-tincan'
 
  
