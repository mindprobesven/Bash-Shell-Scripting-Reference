#!/bin/bash

# Curl response time logger
# ----------------------------------------------------------------------
# Logs http-code and response time of URLs in a file using curl

file="./url.txt"
log="./results.txt"
fmt="%-25s%-12s%-12s\n"

printf "$fmt" DOMAIN_NAME HTTP_CODE RESPONSE_TIME > "$log"

while read line
do
	# -o /dev/null = redirects output
	# --head = get only head
	# --write-out = Get specific curl variable data
	read code time < <(curl -o /dev/null "$line" --silent --head --write-out '%{http_code} %{time_total}')
	printf "$fmt" "$line" "$code" "$time" >> "$log"
done < "$file"

