#!/bin/bash

# Function to convert Feet to Inch
feet_to_inch() {
    read -p "Enter length in feet: " feet
    inch=$((feet * 12))
    echo "$feet feet is equal to $inch inches."
}

# Function to convert Feet to Meter
feet_to_meter() {
    read -p "Enter length in feet: " feet
    meter=$(echo "scale=2; $feet * 0.3048" | bc)
    echo "$feet feet is equal to $meter meters."
}

# Function to convert Inch to Feet
inch_to_feet() {
    read -p "Enter length in inches: " inch
    feet=$(echo "scale=2; $inch / 12" | bc)
    echo "$inch inches is equal to $feet feet."
}

# Function to convert Meter to Feet
meter_to_feet() {
    read -p "Enter length in meters: " meter
    feet=$(echo "scale=2; $meter / 0.3048" | bc)
    echo "$meter meters is equal to $feet feet."
}

# Main program
echo "Choose a conversion option:"
echo "1. Feet to Inch"
echo "2. Feet to Meter"
echo "3. Inch to Feet"
echo "4. Meter to Feet"

read -p "Enter your choice: " choice

case $choice in
    1) feet_to_inch ;;
    2) feet_to_meter ;;
    3) inch_to_feet ;;
    4) meter_to_feet ;;
    *) echo "Invalid choice. Please select a valid option." ;;
esac
