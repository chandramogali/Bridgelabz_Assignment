#!/bin/bash


read -p "Enter the first number: " a
read -p "Enter the second number: " b
read -p "Enter the third number: " c

# Perform arithmetic operations
result1=$((a + b * c))
result2=$((a % b + c))
result3=$((c + a / b))
result4=$((a * b + c))


max_result="$result1"
min_result="$result1"

# Compare results to find maximum and minimum
if [ "$result2" -gt "$max_result" ]; then
    max_result="$result2"
elif [ "$result2" -lt "$min_result" ]; then
    min_result="$result2"
fi

if [ "$result3" -gt "$max_result" ]; then
    max_result="$result3"
elif [ "$result3" -lt "$min_result" ]; then
    min_result="$result3"
fi

if [ "$result4" -gt "$max_result" ]; then
    max_result="$result4"
elif [ "$result4" -lt "$min_result" ]; then
    min_result="$result4"
fi

# Print the maximum and minimum results
echo "Maximum result: $max_result"
echo "Minimum result: $min_result"
