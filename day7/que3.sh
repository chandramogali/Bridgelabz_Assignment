#!/bin/bash

# Function to check if a number is prime
is_prime() {
  local num=$1
  if [[ $num -lt 2 ]]; then
    return 1
  fi
  for ((i = 2; i * i <= num; i++)); do
    if (($num % i == 0 )); then
      return 1
    fi
  done
  return 0
}

# Function to find and store all prime factors of a number into an array
prime_factors() {
  local num=$1
  local factors=()

  for ((i = 2; i <= num; i++)); do
    if [[ $num -eq 1 ]]; then
      break
    fi

    while [[ $((num % i)) -eq 0 && $(is_prime $i) -eq 0 ]]; do
      factors+=($i)
      num=$((num / i))
    done
  done

  echo "${factors[@]}"
}

# Function to generate 10 random 3-digit numbers and store them in an array
generate_random_numbers() {
  local numbers=()
  for ((i = 0; i < 10; i++)); do
    numbers[i]=$((100 + RANDOM % 900))
  done
  echo "${numbers[@]}"
}

# Generate 10 random 3-digit numbers and store them in an array
numbers=$(generate_random_numbers)

# Display the generated numbers
echo "Generated Numbers: $numbers"

# Iterate through the generated numbers and find their prime factors
for num in $numbers; do
  factors=($(prime_factors $num))
  echo "Prime factors of $num are: ${factors[@]}"
done
