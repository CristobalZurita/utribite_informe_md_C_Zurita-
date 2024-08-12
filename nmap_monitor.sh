#!/bin/bash

# Define the IP or network range to scan
TARGET="192.168.1.0/24"

# Define the interval in seconds between scans
INTERVAL=300  # 5 minutes

while true
do
    # Get the current date and time
    TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

    # Run the nmap scan and save the output to a file
    echo "Running nmap scan at $TIMESTAMP" >> nmap_log.txt
    sudo nmap -sP $TARGET >> nmap_log.txt 2>&1

    # Wait for the defined interval before the next scan
    sleep $INTERVAL
done

