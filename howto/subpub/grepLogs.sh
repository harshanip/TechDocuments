#!/bin/bash
 #production Servers 
for i in  prosp03c.ecollege.net 
#prosp02c.ecollege.net prosp01c.ecollege.net
do
echo $i
ssh hperera@$i "grep 00000ce3-3695-731a-71c6-d86aeffe0b40 /var/log/prospero/prospero.audit.log -C 4 -m 3" 
done  
  
