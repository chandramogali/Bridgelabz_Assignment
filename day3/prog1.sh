echo "enter a first number"
read a
echo "enter b"

read b

if [ $a -gt $b ]
then 
	echo "A is Greater than b"
elif  [ $a -eq $b ] 
then 
	echo "A is equal to b"
else
  	echo "A is smaller than B"

fi
  
