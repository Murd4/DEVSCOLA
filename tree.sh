#!/bin/bash
echo "
**********************
Command-Line Assesment:

1. Type 'tree' to create a folder tree.
2. Once created, type 'find' to find a file inside it.
"
read -p "Introduce your option: " opt1
if [[ $opt1 == "tree" ]]; then
	read -p "Introduce the number of folders" folder_num
	a=0
	b=1
	while [ $a -lt $folder_num ]
	do
		read -p "Introduce the name of folder ${b}" folder[$a]
		((a+=1))
		((b+=1))
	done
	IFS=/
	mkdir -p "${folder[*]})"
	touch "${folder[*]})/foo"
	echo -e " -> Folder tree created"
	read -p "Do you want to display the tree? [y/n] (It might not work if 'tree' is not installed.)" opt2
	if [[ $opt2 == "y"  ]]; then
		tree ${folder[0]}
	fi
elif [[ $opt1 == "find" ]]; then
	read -p "Introduce a search term (i.e foo) : " word1
	find . -name $word1
fi 




