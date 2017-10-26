#!/bin/bash

folder_num=5
a=0
	while [ $a -lt $folder_num ]
	do
		read -p "Introduce the name of folder ${a}" folder[$a]
		((a+=1))
		echo $a
	done


echo ${folder[*]}
