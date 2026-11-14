
#!/bin/bash

# Simple Interest Calculator

echo "===== Simple Interest Calculator ====="

# Get principal amount
read -p "Enter Principal Amount: " principal

# Get rate of interest
read -p "Enter Rate of Interest (%): " rate

# Get time period
read -p "Enter Time Period (in years): " time

# Calculate simple interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount
total=$(echo "scale=2; $principal + $interest" | bc)

# Display results
echo "-----------------------------------"
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate%"
echo "Time Period: $time years"
echo "Simple Interest: $interest"
echo "Total Amount: $total"
echo "-----------------------------------"
