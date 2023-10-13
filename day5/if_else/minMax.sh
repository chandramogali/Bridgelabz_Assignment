#!/bin/bash

# Initialize variables to store minimum and maximum values
min_value=999
max_value=100

# Read 5 random 3-digit values
for ((i=1; i<=5; i++)); do
    # Generate a random 3-digit value
    random_value=$(shuf -i 100-999 -n 1)
    
    # Output the random value
    echo "Random Value $i: $random_value"
    
    # Update minimum and maximum values
    if [ "$random_value" -lt "$min_value" ]; then
        min_value="$random_value"
    fi
    
    if [ "$random_value" -gt "$max_value" ]; then
        max_value="$random_value"
    fi
done

# Output the minimum and maximum values
echo "Minimum Value: $min_value"
echo "Maximum Value: $max_value"
