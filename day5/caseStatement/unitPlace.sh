#!/bin/bash

# Prompt the user to enter a number (1, 10, 100, 1000, etc.)
read -p "Enter a number (1, 10, 100, 1000, etc.): " num


    length=${#num}
    
    case $length in
        1) echo "Unit: $num" ;;
        2) unit="${num:1:1}"
           ten="${num:0:1}"
           echo "Unit: $unit"
           echo "Ten: $ten" ;;
        3) unit="${num:2:1}"
           ten="${num:1:1}"
           hundred="${num:0:1}"
           echo "Unit: $unit"
           echo "Ten: $ten"
           echo "Hundred: $hundred" ;;
	4) unit="${num:3:1}"
	   ten="${num:2:1}"
	   hundred="${num:1:1}"
	   thousand="${num:0:1}"
	   echo "Unit: $unit"
           echo "Ten: $ten"
           echo "Hundred: $hundred" 
	   echo "Thousand: $thousand"
	  ;;

        *) echo "Number is too large to display units, tens, and hundreds." ;;
esac

