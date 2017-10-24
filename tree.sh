#!/bin/bash
echo "
**********************
Command-Line Assesment:

1. Type 'tree' to make a folder tree.
2. Once created, type 'find' to find a file inside it.
"
read -p "Introduce your option: " opt1
if [[ $opt1 == "tree" ]]; then
	mkdir -p 1/2/3
	touch 1/2/3/foo
	echo " -> Folder tree created."
	read -p "Do you want to display the tree? [y/n] (It might not work if 'tree' is not installed.)" opt2
	if [[ $opt2 == "y"  ]]; then
		tree 1
	fi
elif [[ $opt1 == "find" ]]; then
	read -p "Introduce a search term (i.e foo) : " word1
	find ./1 -name $word1
fi 

