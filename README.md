# xmlrpc-scan
Scan a list of domain names looking for XMLRPC.php

chmod +x xmlrpc.sh
cat list.txt |./xmlrpc.sh
list.txt should only have domain names in the file. You can use cyberchef to extract domain names.
Script will follow redirects looking for XML-RPC server accepts POST requests only.
