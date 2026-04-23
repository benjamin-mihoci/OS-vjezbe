#!/bin/bash
if [[ $# -ne 1 ]]; then
	echo "Skripta treba primiti samo jedan argument!"
	exit 1
fi

if [[ !(-e $1 && -d $1) ]]; then
	echo "Direktorij na toj putanji ne postoji!"
	exit 1

else
	if [[ !(-e "$1"/.git && -d "$1"/.git) ]]; then
		echo "To nije git repozitorij!"
		exit 1
	else
		touch repozitorij_info.txt
		git add repozitorij_info.txt
		git commit -m "Proizvoljna poruka"
		git log
	fi		 
fi 
