#!/bin/bash
# Domain name list
clear
DOM="google.com facebook.com domain.com"
for d in $DOM
do
  echo -n "$d ----->"
  whois $d | egrep -i 'Expiration|Expires on' |head -1
done

