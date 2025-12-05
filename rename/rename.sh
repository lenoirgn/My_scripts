#!/bin/bash
source "$(dirname "$0")/rename_onebyone.sh"
source "$(dirname "$0")/rename_all.sh"
rename(){
folder="$1"
choix="$2"
if [ "$choix" = "all" ]; then 
	echo -n "Nouveau nom: "
	read new_name
	rename_all "$folder" "$new_name"
elif [ "$choix" = "one" ]; then 
	rename_onebyone "$folder" 
else
echo "Mauvais choix"
fi

}

