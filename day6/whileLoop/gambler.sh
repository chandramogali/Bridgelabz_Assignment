money=100
bet=1

while [[ $money -gt 0 && $money -lt 200 ]]
do
	play=$((RANDOM % 2))
	if(($play==0))
	then
		money=$(($money - $bet))
	else
		money=$(($money + $bet))
done

if (( $money==0 ))
then
	echo"Gambler lost"
else
	echo "gambler won"
fi
