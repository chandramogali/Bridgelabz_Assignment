#!/bin/bash

# Function to find triplets with zero sum
find_triplets_with_zero_sum() {
  local nums=("$@")
  local n=${#nums[@]}

  for ((i = 0; i < n - 2; i++)); do
    for ((j = i + 1; j < n - 1; j++)); do
      for ((k = j + 1; k < n; k++)); do
        if ((nums[i] + nums[j] + nums[k] == 0)); then
          echo "Triplets with zero sum: ${nums[i]}, ${nums[j]}, ${nums[k]}"
        fi
      done
    done
  done
}

# Example usage:
nums=(-1 0 1 2 -1 -4)
find_triplets_with_zero_sum "${nums[@]}"


