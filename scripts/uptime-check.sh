#!/bin/bash

echo "Uptime Report" > uptime-report.txt
echo "=============" >> uptime-report.txt
echo "" >> uptime-report.txt

SITES=(
https://github.com
https://google.com
https://cloudflare.com
)

for SITE in "${SITES[@]}"
do
  STATUS=$(curl -L -o /dev/null -s -w "%{http_code}" $SITE)

  echo "$SITE   $STATUS" >> uptime-report.txt

  if [ "$STATUS" != "200" ]; then
      echo "WARNING: $SITE returned $STATUS"
  fi
done

echo ""
echo "Uptime check complete."