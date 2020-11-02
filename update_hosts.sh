#!/bin/sh

fetch -o - https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling/hosts | \
grep -E '^0.0.0.0' | \
awk '{print $1 " "  $2}' > /home/cube/adblock/hosts.add

# OPNSense's dnsmasq works quirky without this line.
# It's kinda legacy Bittorent setting, so removing it
# is completely harmless nowadays
echo "0.0.0.0 retracker.local" >> hosts.add
