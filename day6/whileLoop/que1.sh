#!/bin/bash


echo "Powers of 2 up to 2^n (limited to 256):"
read -p " Enter a number : " n
echo "2^0 = 1"

power_of_2=1
i=1

while [ "$power_of_2" -lt 256 ] && [ "$i" -le "$n" ]; do
  power_of_2=$((power_of_2 * 2))
  echo "2^$i = $power_of_2"
  i=$((i + 1))
done
