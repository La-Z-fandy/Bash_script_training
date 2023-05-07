#the objectives is to create array
declare -a arr=(55 56 57 58 59 60)
#add something to array
arr+=(69)
#delete element form array 
unset arr[6]
# length of the array  ${#arr[@]}
l=${#arr[@]}
for (( index=0; index < $l; index++ ))
do
	echo "$index" "${arr[index]}"
done
