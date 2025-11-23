#!/bin/bash

rename_onebyone(){
folder="$1"
if [ -d "$folder" ]; then
	i=0
	for file in "$folder"/*; do
		if [ -f "$file" ]; then 
			ext="${file##*.}"
			echo "$file"
			echo -n "Nouveau nom: "
			read new_name

			mv "$file" "$folder/${new_name}.${ext}"
			((i++))
		fi
	done
		
else
echo "Ce dossier ($folder) n'existe pas "
fi

}
