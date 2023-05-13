# Bash_script_training Documentation
# Training session

PASSING ARGUMENT TO FUNCTION:
#$1,$2,$3...$n is the position of the variables after the function name
#$0 is reserved for the function'sname 
#$# hold the number of positional parameters/arguments passes to the function
#$* and $@ hold all positional parameters/arguments passed to the function
#"S*" all arguments passed  become a string chains variables sepereated by space "$S1 $S2 $Sn"
#"$@" become arguments/parameters become a string "$1" "$2" "$3"

BEST PRACTICE:
#local variable
local variable_name 
declare -a variable_name = create an array named "variable_name"
${variable_name[index]} = call the array 
${variable_name[@]} = "for" total sized of the array
${#variable_name[@]}= give total size 
#creating function
function function_name () {}
#Loops
#While Looping
while ()
do
	Code
done
#for Looping
for (( i=;i<=; i++))
do
	code
done
#for in Looping
for i in ${array[@]}
do
	code
done
#user input/ -s (silent) -p (prompt) -a (array) 
read input


