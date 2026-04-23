#!/bin/bash
N=1
cd screenshots
for datoteka in *; do
	mv $datoteka "screenshots_${N}_$datoteka"
	((N++))
done

for datoteka in *; do
	echo $datoteka
done

