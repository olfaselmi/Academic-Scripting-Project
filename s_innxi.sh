#!/bin/bash

menu=("1- Tout" "2- Seulment certaine ligne" "3- Quitter")
answer=$(zenity --list --title="Sauvgarde" --text="Quelle information voulez-vous sauvgarder ?" --column=Menu "${menu[@]}" --height 190 --width 400)
 
case "$answer" in
"${menu[0]}")
date >> sauvgarde.txt
lshw >> sauvgarde.txt 
;;
"${menu[1]}")
date >> sauvgarde.txt
lshw >> tmp.txt 
l=" "
while [ "$l" != "0" ]
do
l=$(zenity --title "Sauvgarde certaine lignes" --entry --text "Quelle sont les lignes a sauvgarder :
tapez -!- 0 pour quiter -!-" --entry)
head -$l tmp.txt | tail -1 >> sauvgarde.txt 
done
echo `rm tmp.txt`
;;
"${menu[2]}")
;;
*)
echo "Saisie invalide"
;;
esac
