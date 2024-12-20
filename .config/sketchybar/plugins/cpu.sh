top -l1 | grep "^CPU" | awk '{print $3 + $5"%" }'
