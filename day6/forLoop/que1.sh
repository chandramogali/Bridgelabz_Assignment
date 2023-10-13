#!/bin/bash

read -p "Enter a Number : " n

echo "Powers of 2 up to 2^$n:"
echo "2^0 = 1"

power_of_2=1

for (( i=1; i<=$n; i++ )); do
  power_of_2=$((power_of_2 * 2))
  echo "2^$i = $power_of_2"
done
