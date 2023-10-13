#!/bin/bash
declare -A results

while true; 
do
    
    roll=$(shuf -i 1-6 -n 1)
    
    results["$roll"]=$((results["$roll"] + 1))

    for number in "${!results[@]}"; do
        if [ "${results["$number"]}" -ge 10 ]; then
            
            break 2  # Break out of both loops
        fi
    done
done

for key in "${!results[@]}"; do
    echo "$key : ${results["$key"]}"
done

max_occurrence=1
for number in "${!results[@]}"; do
    if [ "${results["$number"]}" -gt "${results["$max_occurrence"]}" ]; then
        max_occurrence="$number"
    fi
done


min_occurrence=1
for number in "${!results[@]}"; do
    if [ "${results["$number"]}" -lt "${results["$min_occurrence"]}" ]; then
        min_occurrence="$number"
    fi
done

echo "Number $max_occurrence reached maximum times: ${results["$max_occurrence"]} times."


echo "Number $min_occurrence reached minimum times: ${results["$min_occurrence"]} times."
