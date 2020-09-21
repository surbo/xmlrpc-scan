#!/bin/bash
# By @surbo 9/21/2020
stamp=$(date +"%m-%d-%Y-%T") #timestamp
touch XML-RPC_RESPONSE_$stamp.csv
while read Domains
do
found=$(cat XML-RPC_RESPONSE_$stamp.csv|wc -l)
printf "                                                                                                              "
printf "\rCurrently Checking: $Domains Domains with XML-RPC: $found\r"
xmlcheck=$(curl --connect-timeout 2.37 -s -L $Domains/xmlrpc.php)
if [[ $xmlcheck = "XML-RPC server accepts POST requests only." ]]
then
  echo $Domains>>XML-RPC_RESPONSE_$stamp.csv
fi
done
echo File Name: XML-RPC_RESPONSE_$stamp.csv
