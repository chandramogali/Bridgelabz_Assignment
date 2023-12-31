#!/bin/bash

# Prompt the user to enter a single-digit number
read -p "Enter a single-digit number (0-9): " num

    case $num in
        0) echo "Zero" ;;
        1) echo "One" ;;
        2) echo "Two" ;;
        3) echo "Three" ;;
        4) echo "Four" ;;
        5) echo "Five" ;;
        6) echo "Six" ;;
        7) echo "Seven" ;;
        8) echo "Eight" ;;
        9) echo "Nine" ;;
	*) echo "Invalid input. Please enter a single-digit number (0-9)."
	;;
esac

