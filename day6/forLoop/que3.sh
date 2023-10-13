#!/bin/bash

read -p "Enter the number : " number

if [ "$number" -le 1 ]; then
  echo "The number $number is not prime."
  exit 0
fi

is_prime=true

for ((i=2; i*i <= number; i++)); do
  if [ $((number % i)) -eq 0 ]; then
    is_prime=false
    break
  fi
done

if [ "$is_prime" = true ]; then
  echo "The number $number is prime."
else
  echo "The number $number is not prime."
fi
