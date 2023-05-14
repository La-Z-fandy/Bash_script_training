#!/bin/bash
#developpez.com
#Créer une fonction appréciation qui retourera une note d'appréciation mais résultat d'un passage de parametre

function appreciation () {

	local note=$1
	if [[ $note -gt 16 ]] ; then
		echo "mention  très bien"
	elif [[ $note -gt 14 ]] ; then
		echo "mention bien"
	elif [[ $note -gt 12 ]] ; then
		echo "mention assez bien"
	elif [[ $note -gt 10 ]] ; then
		echo " mention moyen"
	else
		echo " note insuffisante"
	fi
}


if [[ $# -eq 0 ]]; then
	echo "la fonction appréciation attend une entrer utilisateur"
fi
echo "donnez la note de l'etudiant"
read -s input
appreciation

