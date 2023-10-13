echo "Enter a number a"
read a

echo "Enter  a number b"
read b

echo  ""
echo " press 1 for addition "
echo " press 2 for substraction "
echo " press 3 for multiflication "
echo " press 4 for division "
echo " press 5 for mudulo "
echo ""

echo "Enter the number to perform Arithmatic operation  "
read  n
echo ""

 case $n in 
	1) sum=$(($a+$b))
	   echo "Addition of two number is  $a + $b = $sum"
 	;;
	2) sub=$(($a-$b))
	   echo "subtraction of two number is $a - $b = $sub"
	;;
	3) mul=$(($a*$b))
	   echo "Multiplication  of two number is $a * $b = $mul"
	;;
	4) div=$(($a/$b))
	   echo "division  of two number is $a / $b = $div"
	;;
	5) mod=$(($a%$b))
	   echo "modulus of two number is $a % $b = $mod"
	;;
	*) echo "Please enter valid Input !!"
	;;
esac
