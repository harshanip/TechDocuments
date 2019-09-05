#!/bin/bash
 
ssh -i ~/.ssh/seer.pem ubuntu@10.198.4.136 'date;/opt/kafka/bin/kafka-run-class.sh kafka.tools.ConsumerOffsetChecker --group test --zkconnect 10.198.14.80:2181 --topic seer-tincan'
 
  
