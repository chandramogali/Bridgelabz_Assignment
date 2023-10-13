echo "enter a number"
read a

case $a in 
	1) echo "Potion 1 is Pressed"
	;;
	2) echo "potion 2 is pressed"
	;;
	3) echo "potion 3 is pressed"
	;;
	*) echo "wrong input"
	;;
esac
