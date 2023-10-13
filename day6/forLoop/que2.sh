#!/bin/bash

echo "Enter a number : " 
read n

harmonic=1
for (( i=1; i<=$n; i++ )); do
  echo "$harmonic + 1/$i"
  harmonic=$((($harmonic + (1/$i))))
done

echo "The $n-th harmonic number is: $harmonic"
