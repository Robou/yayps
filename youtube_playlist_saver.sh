#!/bin/sh

echo Répertoire de travail courant : `pwd`

read -p 'Nom du fichier de sortie ?' out
echo "Fichier de sortie : $out"

echo "Début de l'analyse..."
youtube-dl -e --no-warnings -i https://www.youtube.com/playlist?list=PLCF690B0D7B5651D8 | tee -i playlist-$out.backup.txt

echo Done.

