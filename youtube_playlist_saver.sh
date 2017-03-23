#!/bin/sh

#	YAYPS = Yet Another Youtube Playlist Saver
#	EN :	Writes every title from a given youtube playlist into a text file for backup purpose.
#	FR :	Recopie tous les titres d'une playlist Youtube donnée dans un fichier texte pour l'archiver.
#		
#	Copyright (C) 2017  Romain Bousson

#	This program is free software: you can redistribute it and/or modify
#	it under the terms of the GNU Affero General Public License as published
#	by the Free Software Foundation, either version 3 of the License, or
#	(at your option) any later version.

#	This program is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU Affero General Public License for more details.

#	You should have received a copy of the GNU Affero General Public License
#	along with this program. If not, see <http://www.gnu.org/licenses/>.


topdepart="no"

run(){
	read -p 'Nom du fichier de sortie ?' out
	echo "Fichier de sortie : $out"

	read -p "adresse de la playlist à recopier ?" playlist_url
	echo "url de la playlist : $playlist_url"

	echo "Début de l'analyse..."
	youtube-dl -e --no-warnings -i $playlist_url | tee -i BACKUP_Youtube_playlist-$out.txt

	notify-send "YAYPS / Analyse de la playlist terminée !"
	echo Done.
}

while  [ $topdepart="no" ]; do
	echo Répertoire de travail courant : `pwd`

	read -p 'continuer ? (O ou ENTER=oui, N=non ou tapper le répertoire voulu si besoin)      ' answer
	
	case "$answer" in
		oui | o | O | Oui | OUI |"") 
			topdepart="yes"
			run
			break;;
    	non | n | N | Non | NON ) 
			echo "Ok bye bye."
			break;;
		* ) 
			echo "Changement de répertoire..."
			cd "$answer";;
	esac
done

exit 0;