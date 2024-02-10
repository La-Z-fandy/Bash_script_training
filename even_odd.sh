#!/bin/bash 

function Even_Odd () {
#declare integer a b r
	declare -i a=$n
	declare -i b=2
	declare -i r=$a%$b
	declare -i if_even
	declare -i if_odd
#test if the number given by the user is Even or Odd
	if [[ $r -eq 0 ]]; then
		let if_even=$a/2
		echo $if_even
	else
		let if_odd=3*$a+1
	fi
		echo $if_odd
}

function collatz () {
:	Even_Odd
}

echo "entrez un nombre et on saura si c'est pair ou impair"
read n 
collatz



