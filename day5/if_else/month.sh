#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 <day> <month>"
  exit 1
fi

day="$1"
month="$2"

if ! [[ "$day" =~ ^[0-9]+$ ]] || ! [[ "$month" =~ ^[0-9]+$ ]] || [ "$day" -lt 1 ] || [ "$day" -gt 31 ] || [ "$month" -lt 1 ] || [ "$month" -gt 12 ]; then
  echo "Error: Please provide valid day and month values."
  exit 1
fi

# Check if the date is between March 20 and June 20
if [ "$month" -eq 3 ] && [ "$day" -ge 20 ]; then
  echo "true"
elif [ "$month" -gt 3 ] && [ "$month" -lt 6 ]; then
  echo "true"
elif [ "$month" -eq 6 ] && [ "$day" -le 20 ]; then
  echo "true"
else
  echo "false"
fi
