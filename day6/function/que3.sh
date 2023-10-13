#!/bin/bash

# Function to check if a number is prime
is_prime() {
  local num="$1"
  if [ "$num" -le 1 ]; then
    return 1  # Not prime
  fi

  for ((i=2; i*i <= num; i++)); do
    if [ $((num % i)) -eq 0 ]; then
      return 1  # Not prime
    fi
  done

  return 0  # Prime
}

# Function to reverse a number
reverse_number() {
  local num="$1"
  local reversed=0

  while [ "$num" -gt 0 ]; do
    digit=$((num % 10))
    reversed=$((reversed * 10 + digit))
    num=$((num / 10))
  done

  echo "$reversed"
}

# Main program
read -p "Enter a number: " number

if is_prime "$number"; then
  echo "$number is a prime number."

  # Get the palindrome of the number
  palindrome=$(reverse_number "$number")
   if [ "$number" = "$palindrome" ]; then
    	echo "The palindrome of $number is $palindrome."
    else
        echo "$number is not Palindrome"

    fi

  if is_prime "$palindrome"; then
    echo "$palindrome is also a prime number."
  else
    echo "$palindrome is not a prime number."
  fi
else
  echo "$number is not a prime number."
fi
