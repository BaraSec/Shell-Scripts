!/bin/bash
# A script that automates the pinging process of a whole network and cuts the unnecessary parts, to eventually get the live hosts in an 
# organised view.
if [ "$1" = "" ] 
then 
echo "Usage: ./pingscript.sh [network]"
echo "example: ./pingscript.sh 192.168.20"
else
for x in `seq 1 254`; do 
ping -c 1 $1.$x |  grep "64 bytes" | cut -d" " -f4 | sed 's/.$//'
done 
fi 
