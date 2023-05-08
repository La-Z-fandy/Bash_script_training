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
tot=0
#Ici on a va supposer qu'il y a un nombre définit de note à rentrer "dison 10 notes"

for (( C=1; C<=10;C++))
do
#demander à l'utilisateur de rentrer les notes
	echo "donne une note $C1 sur 20"
	read -a note
#fait la somme des éléments données puis calcule la moyenne
	let tot+=${note[@]}
	let Average=$tot/$C
#création d'une condition de sortie dans le cas où l'utilisateur rentre une note négative ou la lettre q
	if [[ $note -le 0 ]] || [[ $note -eq 'q' ]] ; then
		break
	fi
done
#condition pour savoir s'il y a mention au niveau de la moyenne

if [[ $Average -gt 16 ]]; then
	echo "Votre moyenne globale est de $Average/20 avec la mension suivante '$G1'"
elif [[ $Average -gt 14 ]]; then
	echo "Votre moyenne globale est de $Average/20 avec la mension suivante '$G2'"
elif [[ $Average -gt 12 ]]; then
	echo "Votre moyenne globale est de $Average/20 avec la mension suivante '$G3'"
elif [[ $Average -gt 10 ]]; then
	echo "Votre moyenne globale est de $Average/20 avec la mension suivante '$G4'"
else
	echo "Votre moyenne globale est de $Average/20 avec la mension suivante '$G5'"

fi



