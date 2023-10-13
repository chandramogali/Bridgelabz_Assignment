#!/bin/bash
counter=0
# Function to check if a number is a palindrome
is_palindrome() {
    local num="$1"
    local n=$num
    local reversed=0
    while [ "$num" -gt 0 ]; do
        digit=$((num % 10))
        reversed=$((reversed * 10 + digit))
        num=$((num / 10))
    done

    if [ "$n" = "$reversed" ]; then
        return 0  # Return success (true) for palindrome
    else
        return 1  # Return failure (false) for non-palindrome
    fi
}


repeated_numbers=()

# Loop through numbers from 0 to 100
for ((i = 0; i <= 100; i++)); do
    # Check if the number is a palindrome
    num=$i
    num_length=${#num}

    if (( $num_length == 1 ));
     then 
		continue
      
    elif is_palindrome "$i";
    then
        repeated_numbers+=("$i")
    fi
done


echo "Digits with repeated twice within the range 0-100:"
for num in "${repeated_numbers[@]}"; do
    echo "$num"
done
