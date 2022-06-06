size=5 

for (( i=1; i<6; i++))
do 
	array[i]=$(( RANDOM % 900 + 100 ))
done 
echo "the 5 random three digit number are: "
echo "${array[@]}"

for (( i = 0; i< size; i++ ))
do
	swapped=0
	for(( j = 0; j< size-i-1 ; j++))
	do
		if(( array[j] > array [j+1]))
		then 
			temp=${array[j]}
			array[j]=${array[j+1]}
			array [j+1]=$temp
			swapped=1
		fi
	done
	if ((swapped==0))
	then 
		break 
	fi
done 

echo" the sorted array is :"
echo "${array[@]}"

echo "the maximum num is ${array[1]}"
echo "the minimum num is ${array[-1]}"
