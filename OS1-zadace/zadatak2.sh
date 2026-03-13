#!/bin/bash
mkdir vjezba2
touch vjezba2/file.txt
cp vjezba2/file.txt vjezba2/file_copy.txt
ls vjezba2/
rm vjezba2/file.txt
# buduci da se nismo pomicali ranije, povratak u pocetni direktorij nema smisla
# direktorij se ne moze obrisati jer nije prazan
rmdir vjezba2

