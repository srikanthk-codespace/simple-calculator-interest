#!/usr/bin/env bash
# Calculate simple interest: (principal * rate * time) / 100

read -r -p "Enter the principal amount: " principal
read -r -p "Enter the annual interest rate (%): " rate
read -r -p "Enter the time in years: " time

# Validate that all inputs are numeric (integer or decimal).
number_re='^[0-9]+([.][0-9]+)?$'
if [[ ! $principal =~ $number_re || ! $rate =~ $number_re || ! $time =~ $number_re ]]; then
  echo "Error: Please enter valid non-negative numbers."
  exit 1
fi

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", (p*r*t)/100 }')
total=$(awk -v p="$principal" -v i="$interest" 'BEGIN { printf "%.2f", p+i }')

echo "Simple Interest: $interest"
echo "Total Amount: $total"
