#!/bin/bash

read -p "Enter the Starting number : " start
read -p "Enter the Ending number : " end

echo "Prime numbers in the range $start to $end are:"

for ((number=start; number<=end; number++)); do
  is_prime=true

  for ((i=2; i*i <= number; i++)); do
    if [ $((number % i)) -eq 0 ]; then
      is_prime=false
      break
    fi
  done

  if [ "$is_prime" = true ]; then
    echo "$number"
  fi
done
