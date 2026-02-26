#!/bin/bash

sites=(
    "itbox.ua"
    "github.com"
    "my-fake-site-123.com"
)

for site in "${sites[@]}"; do
    status=$(curl -L -o /dev/null -s -w "%{http_code}" --connect-timeout 5 "https://$site")
    
    if [ "$status" == "200" ]; then
        echo "$site is UP"
    else
        echo "$site is DOWN"
    fi
done
