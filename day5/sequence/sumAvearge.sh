echo "sum and average of five random number"

sum=0
conut=0

for((i=1;i<=5;i++));
do
	random_no=$(((RANDOM %90)+10))
	echo "random Value  $i : $random_no "

	sum=$(($sum + $random_no))
	count=$(($count +1))
done

average=$(($sum / $count))
echo " Sum of five random number is : $sum"
echo " Average of five random number is :$average "

