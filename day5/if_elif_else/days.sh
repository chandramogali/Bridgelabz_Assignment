#!/bin/bash

# Prompt the user to enter a number (1-7)
read -p "Enter a number (1-7) representing a day of the week: " num

 if [ "$num" -eq 1 ]; then
     echo "Sunday"
 elif [ "$num" -eq 2 ]; then
     echo "Monday"
 elif [ "$num" -eq 3 ]; then
     echo "Tuesday"
 elif [ "$num" -eq 4 ]; then
     echo "Wednesday"
 elif [ "$num" -eq 5 ]; then
     echo "Thursday"
 elif [ "$num" -eq 6 ]; then
     echo "Friday"
 elif [ "$num" -eq 7 ]; then
     echo "Saturday"
   
else
    echo "Invalid input. Please enter a number between 1 and 7."
fi
