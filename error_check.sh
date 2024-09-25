#!/bin/bash

# Website to monitor
website="https://sports-sourcingshow.com/"
# Log file to record downtime
log_file="website_monitor.log"

# Clear previous log
> "$log_file"

# Check the website status
check_website() {
    response=$(curl -s -o /dev/null -w "%{http_code}" "$website")

    if [ "$response" -ne 200 ]; then
        echo "$(date): $website is down. HTTP response code: $response" >> "$log_file"
    else
        echo "$(date): $website is up." >> "$log_file"
    fi
}

# Run the check
check_website

echo "Check completed. See $log_file for details."
