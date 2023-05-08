#!/bin/bash
#Test your knowledge about the array
#We don't know the exact size of the array since it is up to the user to decide
#ask the user input and put it in array variable called array
echo "add a number"
read -a array
tot=0
for i in ${array[@]};
do
#in bash you have to specify whether or not you are doing an arythmetic element
	let tot+=$i
	echo "$tot"
done 

