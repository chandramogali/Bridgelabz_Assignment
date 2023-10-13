#!/bin/bash

# Generate a random number (0 or 1) to simulate a coin flip
coin=$((RANDOM % 2))

# Check the result and print "Heads" or "Tails" accordingly
if [ "$coin" -eq 0 ]; then
    echo "Heads"
else
    echo "Tails"
fi
