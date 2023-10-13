#!/bin/bash

echo "Welcome to the Magic Number Game!"
echo "Think of a number between 1 and 100."

low=1
high=100
magicNumberFound=false

while [ "$magicNumberFound" = false ]; do
  guess=$(( (low + high) / 2 ))

  read -p "Is your number $guess? (Enter 'l' for lower, 'g' for greater, or 'c' for correct): " userResponse

  case "$userResponse" in
    l|L)
      high=$((guess - 1))
      ;;
    g|G)
      low=$((guess + 1))
      ;;
    c|C)
      magicNumberFound=true
      echo "Congratulations! Your magic number is $guess."
      ;;
    *)
      echo "Invalid input. Please enter 'l', 'g', or 'c'."
      ;;
  esac
done
