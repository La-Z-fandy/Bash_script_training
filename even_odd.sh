#!/bin/bash 

function Even_Odd () {
#declare integer a b r
declare -i a=$n
declare -i b=2
declare -i r=$a%$b
#test if the number given by the user is Even or Odd
if [[ $r -eq 0 ]]; then

	echo "Even"
else

	echo "Odd"
fi
}

read n
Even_Odd


