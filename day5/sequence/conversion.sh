#!/bin/bash

# Conversion factors
inches_per_foot=12
feet_to_meters=0.3048
square_meters_per_acre=4046.86

# a. Conversion from inches to feet
inches=42
feet=$($inches / $inches_per_foot)
echo "a. 42 inches is equal to $feet feet"

# b. Conversion of a rectangular plot from feet to meters
length_feet=60
width_feet=40
length_meters=$(echo "scale=2; $length_feet * $feet_to_meters" )
width_meters=$(echo "scale=2; $width_feet * $feet_to_meters" )
echo "b. Rectangular plot is approximately $length_meters meters x $width_meters meters"

# c. Calculate the area of 25 plots in acres
plot_area_meters=$(echo "scale=2; $length_meters * $width_meters" )
total_area_meters=$(echo "scale=2; 25 * $plot_area_meters")
total_area_acres=$(echo "scale=3; $total_area_meters / $square_meters_per_acre")
echo "c. The total area of 25 plots is approximately $total_area_acres acres"

