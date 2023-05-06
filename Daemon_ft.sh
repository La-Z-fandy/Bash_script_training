#!/bin/bash
###################################################################################################################################################################################################################


											#Script: Transfer File From R1 to R2 and Archive in R3	
###################################################################################################################################################################################################################

#Repositories
R1="/home/franco/Documents/ft1/"
R2="/home/franco/Documents/ft2/"
R3="/home/franco/Documents/tmp/ARC/"

#Convenient commands

NF=$(ls $R1 | wc -l)
DATE=$(date +"%Y%m%d") 
S=$(ls -r $R2*)
						
#Test if files exist in R1

if (test -e $R1)
then
	echo "Number of Element found:$NF" >> /home/franco/Documents/tmp/$DATE.log
	while true
	do
		cp $R1* $R3 
		gzip -r $R3 
		mv $R1* $R2
		echo "$DATE - $R2$S" >> /home/franco/Documents/tmp/$DATE.log
		sleep 30s
	done
else 
	echo "File not found"
fi
