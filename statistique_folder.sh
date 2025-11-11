#!/bin/bash

statistique(){
dossier="$1"
  if [ -d "$dossier" ]; then   
    comp=0
    comp_sd=0
    liste_ext=()
    for fichier in "$dossier"/*; do
	     if [ -f "$fichier" ]; then      
	      ext="${fichier##*.}"
	existe=false

	for e in "${liste_ext[@]}"; do
	  if [ "$e" = "$ext" ]; then
	    existe=true
	    break  
	  fi
	done

	if [ "$existe" = false ]; then
	  liste_ext+=( "$ext" )
	fi
      	(( comp+=1 ))
    else
      echo "$fichier" 
      (( comp_sd+=1 ))
      fi
    done
     echo "\n"
    echo "Il existe $comp_sd sous-dossier et $comp fichiers dans le dossier courant"
    echo "\n"
      for ext in "${liste_ext[@]}"; do
    compt_ext=0
    for fichier in "$dossier"/*; do
      if [ -f "$fichier" ]; then
        fichier_ext="${fichier##*.}"
        if [ "$fichier_ext" = "$ext" ]; then
          (( compt_ext+=1 ))
        fi
      fi
    done
    echo "  - .$ext : $compt_ext fichier(s)"
  done
    
  else
    echo "Le dossier $dossier n'existe pas."
  fi

}
