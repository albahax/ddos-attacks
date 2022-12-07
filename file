#!/bin/bash

# This script will check for incoming DDOS attacks to a Linux server
# running Debian 11 and will block them.

# Variables
# The IP address of the server
SERVER_IP="xxx.xxx.xxx.xxx"

# The log file used to store the DDOS attack information
DDOS_LOG="/var/log/ddos.log"

# Maximum number of connections allowed from a single IP address
MAX_CONN="10"

# Create the log file if it doesn't exist
if [ ! -f $DDOS_LOG ]; then
    touch $DDOS_LOG
fi

# Check for incoming DDOS attacks
DDOS_CHECK=$(netstat -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -n | grep -v $SERVER_IP | awk '$1 > $MAX_CONN { print $2 }')

# If an attack is detected, block the IP address
if [ -n "$DDOS_CHECK" ]; then
    for IP in $DDOS
