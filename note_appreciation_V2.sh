#!/bin/bash 
#V1.0-créer un script qui demande à l'utilisateur de saisir une note et qui affiche un message en fonction de cette note:
	#"très bien" si la note est entre 16 et 20
	#"bien" lorsqu'elle est entre 14 et 16
	#"assez bien" si la note est entre 12 et 14
	#"moyen" si la note est entre 10 et 12
	#"insuffisant" si la note est inférieure à 10
#V2.0-reprendre l'énoncé V1.0 et faire en sorte que le programme se répère tant que l'utilisateur n'a pas saisi une note négative ou 'q' pour quitter
#Code
#variables:
G1="très bien"
G2="bien"
G3="assez bien"
G4="moyen"
G5="insuffisant"
C=1
#Demander à l'utilisateur de renter n nombre de note 
while [[ $C -le 10 ]]
do
	echo "Note numéro $C /20 "
	((C++))
	read  Note
#condition to allow the user to quit the while loop if negative number or letter q is given in the input 
	if [[ "$Note" -le 0 ]] || [[ "$Note" = 'q' ]] ; then
	break
	fi
done 
echo "$Note$C"
