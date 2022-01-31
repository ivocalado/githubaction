#!/usr/bin/env bash

url=`wget -q https://api.github.com/repos/aquasecurity/tfsec/releases/latest -O - | grep -o -E 'https://.+?tfsec-linux-amd64' | head -n1`;
echo ">> URL: $url";
wget -O - -q $url > tfsec;
echo ">>Installling tfsec";
install tfsec /usr/local/bin/;
echo ">>Running tfsec";
./bin/tfsec_scan.sh
