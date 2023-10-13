 #!/bin/bash

heads_count=0
tails_count=0

while [ "$heads_count" -ne 11 ] && [ "$tails_count" -ne 11 ]; do
  result=$((RANDOM % 2))

  if [ "$result" -eq 0 ]; then
    echo "Heads"
    ((heads_count++))
  else
    echo "Tails"
    ((tails_count++))
  fi
done

if [ "$heads_count" -eq 11 ]; then
  echo "$heads_count Heads wins 11 times!"
else
  echo "$tails_count Tails wins 11 times!"
fi
