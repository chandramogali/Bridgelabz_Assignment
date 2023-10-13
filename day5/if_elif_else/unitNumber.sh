#!/bin/bash

# Prompt the user to enter a number (1, 10, 100, 1000, etc.)
read -p "Enter a number (1, 10, 100, 1000, etc.): " num


    length=${#num}
    
    if [ "$length" -eq 1 ]; then
        echo "Unit: $num"
    elif [ "$length" -eq 2 ]; then
        unit_digit="${num:1:1}"
        echo "Unit: $unit_digit"
        ten_digit="${num:0:1}"
        echo "Ten: $ten_digit"
    elif [ "$length" -eq 3 ]; then
        unit_digit="${num:2:1}"
        echo "Unit: $unit_digit"
        ten_digit="${num:1:1}"
        echo "Ten: $ten_digit"
        hundred_digit="${num:0:1}"
        echo "Hundred: $hundred_digit"
     elif [ "$length" -eq 4 ]; then
        unit_digit="${num:3:1}"
        echo "Unit: $unit_digit"
        ten_digit="${num:2:1}"
        echo "Ten: $ten_digit"
        hundred_digit="${num:1:1}"
        echo "Hundred: $hundred_digit"
	thousand_digit="${num:0:1}"
	echo "Thousand: $thousand_digit"
    else
        echo "Number is too large to display units, tens, and hundreds."
    fi

