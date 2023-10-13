#!/bin/bash

initial_balance=100
goal=200
bet_amount=1

balance="$initial_balance"
bets=0
wins=0

while [ "$balance" -gt 0 ] && [ "$balance" -lt "$goal" ]; do
  ((bets++))
  result=$((RANDOM % 2))

  if [ "$result" -eq 0 ]; then
    # Gambler loses the bet
    balance=$((balance - bet_amount))
  else
    # Gambler wins the bet
    balance=$((balance + bet_amount))
    ((wins++))
  fi
done

if [ "$balance" -eq 0 ]; then
  echo "Gambler went broke. No more money to gamble."
else
  echo "Gambler reached the goal of Rs $goal."
fi

echo "Number of bets made: $bets"
echo "Number of times won: $wins"
