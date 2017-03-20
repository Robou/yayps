#!/bin/sh

topdepart="no"

run(){
	read -p 'Nom du fichier de sortie ?' out
	echo "Fichier de sortie : $out"

	read -p "adresse de la playlist à recopier ?" playlist_url
	echo "url de la playlist : $playlist_url"

	#for testdev purpose:
		#playlist_url="https://www.youtube.com/playlist?list=PLCF690B0D7B5651D8"
		#echo "*vraie* url de la playlist : $playlist_url"

	echo "Début de l'analyse..."
	youtube-dl -e --no-warnings -i $playlist_url | tee -i playlist-$out.backup.txt

	echo Done.
}

while  [ $topdepart="no" ]; do
	echo Répertoire de travail courant : `pwd`

	read -p 'continuer ? (O=oui, N=non ou tapper le répertoire voulu)      ' answer
	
	case "$answer" in
		oui | o | O | Oui | OUI ) 
			topdepart="yes"
			#echo "answer= $answer"
			echo "topdepart= $topdepart"
			run;; 
    	non | n | N | Non | NON ) 
			echo "Ok bye bye."
			break;;
		* ) 
			echo "Changement de répertoire..."
			cd "$answer";;
	esac
done

exit 0;