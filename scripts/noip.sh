#!/bin/bash

# This script can be useful to access your device behind a NAT (like an internet box)
# It will email you the public IP of your device whenever it changes.
# It can be used like a cheap "no-ip service", but without owning a DNS record.
# Just connect to your device using the public IP.

# Add this crons to a user crontab :
# Run this script once an hour (can be decreased if needed)
# 0 * * * * bash /root/noip.sh
# makes sure the home router doesn't "forget" about your device. Changes IP if necessary
# 0/4 * * * * ping -c 1 192.168.0.1 &> /dev/null

save_file=$HOME/.noip
email="email@address.domain"

current_ip=$(curl -s http://icanhazip.com)
old_ip=$(cat $save_file 2> /dev/null)

if [ "$old_ip" = "$current_ip" ]; then
	exit 0
else
	mail -s "ip raspberry" $email <<< "New ip is : $current_ip"
	echo $current_ip > $save_file
fi

exit 0
