#!/bin/bash

# Prompt user for domain
echo "Enter a domain (e.g., example.com):"
read domain

# Define a list of popular dorks
dorks=(
    "site:$domain filetype:pdf"
    "site:*$domain"
    "site:$domain filetype:pdf | filetype:doc | filetype:xls"
    "site:$domain filetype:ini"
    "site:$domain filetype:txt"
    "site:$domain filetype:html"
    "site:$domain filetype:js"
)

# Display dorks
echo "Top 50 popular search dorks for $domain:"
for dork in "${dorks[@]}"; do
    echo "$dork"
done
