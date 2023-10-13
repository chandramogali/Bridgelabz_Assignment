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

# Sort the array in ascending order
sorted_numbers=($(for num in "${numbers[@]}"; do echo "$num"; done | sort -n))

# Find the 2nd largest and 2nd smallest numbers from the sorted array
second_largest=${sorted_numbers[8]}
second_smallest=${sorted_numbers[1]}

# Print the array and the 2nd largest and 2nd smallest numbers
echo "Generated Numbers: ${numbers[*]}"
echo "Sorted Numbers: ${sorted_numbers[*]}"
echo "2nd Largest Number: $second_largest"
echo "2nd Smallest Number: $second_smallest"
