#!/bin/bash

# Function for addition
add() {
  local result=$(( $1 + $2 ))
  echo "Sum: $result"
}

# Function for subtraction
subtract() {
  local result=$(( $1 - $2 ))
  echo "Difference: $result"
}

# Function for multiplication
multiply() {
  local result=$(( $1 * $2 ))
  echo "Product: $result"
}

# Function for division
divide() {
  if [ $2 -eq 0 ]; then
    echo "Error: Division by zero is not allowed."
  else
    local result=$(awk "BEGIN { printf \"%.2f\", $1 / $2 }")
    echo "Quotient: $result"
  fi
}

# Main program
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

echo "Select an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read -p "Enter your choice (1/2/3/4): " choice

case "$choice" in
  1)
    add "$num1" "$num2"
    ;;
  2)
    subtract "$num1" "$num2"
    ;;
  3)
    multiply "$num1" "$num2"
    ;;
  4)
    divide "$num1" "$num2"
    ;;
  *)
    echo "Invalid choice. Please enter a valid operation (1/2/3/4)."
    ;;
esac
