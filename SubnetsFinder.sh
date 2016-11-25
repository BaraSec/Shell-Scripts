#!/bin/bash

# A script I wrote to find subnets for a wider attack surface, and then view the result in an easy way to follow up and read.

for i in `seq  1 10`;
do 
   nmap -sn 197.6.$i.0/24 | more
done
