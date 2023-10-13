#!/bin/bash

# Function to check if a number is a palindrome
is_palindrome() {
  local num="$1"
  local reversed=0
  local original="$num"

  while [ "$num" -gt 0 ]; do
    digit=$((num % 10))
    reversed=$((reversed * 10 + digit))
    num=$((num / 10))
  done

  if [ "$original" -eq "$reversed" ]; then
    echo "The number $original is a palindrome."
  else
    echo "The number $original is not a palindrome."
  fi
}

read -p "Enter a number " num

is_palindrome "$num"

