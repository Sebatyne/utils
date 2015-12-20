#!/bin/bash

# This script set up a NAT on your network interfaces
# It can be used to allow your virtual machines to connect to the internet,
# regardless of you virtualization technology.
# Interfaces can be bridges.

if [ $# -ne 2 ]
then
    echo "run like this :    do_nat.sh INTERFACE_IN INTERFACE_OUT"
    exit 1
fi

echo 1 > /proc/sys/net/ipv4/ip_forward
/sbin/iptables -t nat -A POSTROUTING -o $2 -j MASQUERADE
/sbin/iptables -A FORWARD -i $2 -o $1 -m state --state RELATED,ESTABLISHED -j ACCEPT
/sbin/iptables -A FORWARD -i $1 -o $2 -j ACCEPT
