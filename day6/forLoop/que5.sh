#!/bin/bash
read -p "Enter the number : " number

factorial=1

for ((i = 1; i <= number; i++)); do
  factorial=$((factorial * i))
done

echo "The factorial of $number is: $factorial"
