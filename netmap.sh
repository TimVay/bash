#!/bin/bash

sitecible=$1

	#Exécuter Traceroute

traceroute $sitecible > resultat.tmp

	#Récupérer routeurs en parcourant lignes par lignes

chemin="test"

cat resultat.tmp | while read ligne	#la variable $ligne contient le texte de la ligne
do
		grep ( $ligne
		mkdir routeurs/"$chemin" 
		$chemin="$chemin"/"$ligne"
done

	#Placer les routeurs dans des fichiers

#AJOUT DE SITE
#for all Ligne $routeur de la sortie de./traceroute.sh $site do
	#if $routeur est le dernier de la liste then
		#Créer un fichier vide routeurs/$site
	#else
		#Créer un lien symbolique routeurs/$site qui pointe vers le routeur suivant
	#end if
#end for

#Créer un lien nommé sites/$site vers le premier routeur traversé

#AFFICHAGE DE LA CARTE
#tree -l sites | grep -v recursive | sed -e ’s/\/.*\///g’ | sed -e ’s/ [^ ]* ->//g’