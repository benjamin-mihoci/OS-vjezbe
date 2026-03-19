#!/bin/bash
mkdir vjezba5

rendom_ime="$RANDOM"

touch vjezba5/${rendom_ime}.num
# postoji li datoteka mozemo provjeriti naredbom test
if test -f vjezba5/${rendom_ime}.num; then
	echo "datoteka postoji"
	echo "pa radim kopiju datoteke: "
	cp vjezba5/${rendom_ime}.num vjezba5/backup.num
	mkdir vjezba5/backup
	mv vjezba5/backup.num vjezba5/backup/backup.num
fi 

