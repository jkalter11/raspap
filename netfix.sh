#!/bin/bash

Blue='\033[0;34m'
Green='\033[0;32m'

if ping -c 1 10.3.141.254 &> /dev/null
then
 echo -e "${Green}Wifi Works Fine"
else
 echo -e "${blue}Restarting Wifi"
 service hostapd stop; service hostapd start
fi
