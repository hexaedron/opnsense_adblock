#!/bin/sh

fetch -o - http://winhelp2002.mvps.org/hosts.zip | \
unzip -p - | \
grep -E '^0.0.0.0' | \
awk '{print $1 " "  $2}' > /home/cube/adblock/hosts.add

# OPNSense's dnsmasq works quirky without this line.
# It's kinda legacy Bittorent setting, so removing it
# is completely harmless nowadays
echo "0.0.0.0 retracker.local" >> hosts.add
