#!/bin/bash
if [[ $# -ne 1 ]]; then
	echo "Potrebno je unijeti samo jedan argument!"
	exit 1
fi

if [[ -d $1 && -e $1 ]]; then
	zip -r "$1"/svi_zapisi.zip "$1"/
else
	echo "Direktorij ne postoji!"
	exit 1
fi
