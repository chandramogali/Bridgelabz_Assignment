#!/bin/bash

# Function to generate a random 3-digit number
generate_random_number() {
  echo $((100 + RANDOM % 900))
}

# Generate 10 random 3-digit numbers and store them in an array
numbers=()
for ((i = 0; i < 10; i++)); do
  numbers[i]=$(generate_random_number)
done

# Initialize variables to store the 2nd largest and 2nd smallest numbers
second_largest=${numbers[0]}
largest=${numbers[0]}
second_smallest=${numbers[0]}
smallest=${numbers[0]}

# Iterate through the array to find the 2nd largest and 2nd smallest numbers
for num in "${numbers[@]}"; do
  if ((num > largest)); then
    second_largest=$largest
    largest=$num
  elif ((num > second_largest && num != largest)); then
    second_largest=$num
  fi

  if ((num < smallest)); then
    second_smallest=$smallest
    smallest=$num
  elif ((num < second_smallest && num != smallest)); then
    second_smallest=$num
  fi
done

# Print the array and the 2nd largest and 2nd smallest numbers
echo "Generated Numbers: ${numbers[*]}"
echo "2nd Largest Number: $second_largest"
echo "2nd Smallest Number: $second_smallest"
