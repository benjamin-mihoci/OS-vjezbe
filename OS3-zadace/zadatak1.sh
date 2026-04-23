#!/bin/bash
if [[ $# -ne 2 ]]; then
	echo "Potrebno je proslijediti točno dva argumenta!"
	exit 1
fi

PATH_TO_DIR=$1
EXTENSION=$2
NUM_OF_FILES=0

for datoteka in "$PATH_TO_DIR"/*; do
	if [[ -f $datoteka && $datoteka == *"${EXTENSION}" ]]; then
		echo "$(basename $datoteka)"
		((NUM_OF_FILES++))
	fi
done

if [[ NUM_OF_FILES -eq 0 ]]; then
	echo "Nema datoteka s tom ekstenzijom"
fi

