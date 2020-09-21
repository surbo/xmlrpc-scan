#!/bin/bash
# By @surbo 2020
#quick and dirty script to scan a list of domains
#Example cat list.txt |./xmlrpc.sh
stamp=$(date +"%m-%d-%Y-%T") #timestamp
while read Domains
do
xmlcheck=$(curl -s -L $Domains/xmlrpc.php)
if [[ $xmlcheck = "XML-RPC server accepts POST requests only." ]]
then
  echo $Domains>>XML-RPC_RESPONSE_$stamp.csv
fi
done
echo File Name: XML-RPC_RESPONSE_$stamp.csv
