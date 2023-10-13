declare -A month

month["January"]=0
month["February"]=0
month["March"]=0
month["April"]=0
month["May"]=0
month["June"]=0
month["July"]=0
month["August"]=0
month["September"]=0
month["Octomber"]=0
month["November"]=0
month["December"]=0

for (( i=0;i<50;i++))
do
	r=$((RANDOM %12))
	if (($r==0))
	then
		jan=${month["January"]}
		month["January"]=$(($jan + 1))
	elif  (($r==1))
	then
		feb=${month["February"]}
                month["February"]=$(($feb + 1))
	elif  (($r==2))
        then
                mar=${month["March"]}
                month["March"]=$(($mar + 1))

	 elif  (($r==3))
         then
                apr=${month["April"]}
                month["April"]=$(($apr + 1))
	 elif  (($r==4))
         then
                may=${month["May"]}
                month["May"]=$(($may + 1))
	 elif (($r==5))
         then
                june=${month["June"]}
                month["June"]=$(($june + 1))
	 elif (($r==6))
         then
                july=${month["July"]}
                month["July"]=$(($july + 1))
	 elif (($r==7))
         then
                aug=${month["August"]}
                month["August"]=$(($aug + 1))
	 elif (($r==8))
         then
                sep=${month["September"]}
                month["September"]=$(($sep + 1))

	 elif  (($r==9))
         then
                oct=${month["Octomber"]}
                month["Octomberl"]=$(($oct + 1))
	 elif (($r==10))
         then
                nov=${month["November"]}
                month["November"]=$(($nov + 1))
	   elif (($r==11))
           then
                dec=${month["December"]}
                month["December"]=$(($dec + 1))

	fi
done

echo "born in january ${month["January"]}
echo "Born in february ${month["February"]}
echo "Born in March  ${month["March"]}
echo "Born In April ${month["April"]}
echo "Born in MAy ${month["May"]}
echo "Born in June ${month["June"]}
echo "Born In July ${month["July"]}
echo "Born in August ${month["August"]}
echo "Born in sepetember${month["September"]}
echo "Born In October ${month["Octomber"]}
echo "Born in november ${month["November"]}
echo "Born in December ${month["December"]}

