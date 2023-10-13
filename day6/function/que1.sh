#!/bin/bash

echo "Temperature Conversion Menu:"
echo "1. Convert from Celsius to Fahrenheit (degC to degF)"
echo "2. Convert from Fahrenheit to Celsius (degF to degC)"
read -p "Enter your choice (1 or 2): " choice

function celsiusTOFahrenheit(){
	read -p "Enter temperature in Celsius " degC
    
      degF=$((($degC * 9/5) + 32))
      echo "${degC}°C is equal to ${degF}°F."

}

 function farenheitToCelsius(){
    read -p "Enter temperature in Fahrenheit : " degF
      degC=$((($degF - 32) * 5/9 ))
      echo "${degF}°F is equal to ${degC}°C."


}

case "$choice" in
  1)
     celsiusTOFahrenheit 
    ;;
  2)
       farenheitToCelsius
    ;;
  *)
    echo "Invalid choice. Please enter 1 or 2."
    ;;
esac
