# yayps
*Yet Another Youtube Playlist Saver*: a script that creates a backup of all the titles of your playlist into a txt file in order to avoid loss of songs when the YT account closes.

# Pourquoi ce script ?
Ce script essaie de résoudre un problème qui m'arrive régulièrement avec mes playlists de musique sur mon compte youtube. Avec le temps, certaines chansons finissent par ne plus être accessibles, pour diverses raisons : suppression de la vidéo, fermeture du compte associé, demande des ayants droit, passage de la vidéo en mode privé...
Je me retrouve donc souvent avec des trous dans ma playlist, sans que je ne sache à quel titre cela correspondait, vu que maintenant Youtube n'indique plus quel était le titre de la vidéo qui était à l'adresse que l'on essaie de consulter.
Il y avait la solution de mettre un commentaire aide-mémoire dans l'outil de gestion de playlist : pour chaque titre, je recopiait le titre de la vidéo et l'indiquait en commentaire. Le commentaire restait affiché ensuite même si la vidéo entre temps n'était plus dispo pour cause de fermeture de compte. Mais ce temps semble révolu : Youtube supprime aussi ce commentaire de votre playlist lorsque la vidéo est supprimée du compte qui l'avait uploadée.

Il existe quelques sites d'archivage du net, comme offliberty.com ou des sites spécialisés pour retrouver des vidéos youtubes supprimées, mais ceux ci ne restent jamais longtemps en ligne et en semblent pas apporter de résultats stables à long terme.

Le seul moyen revient donc à avoir la liste des titres sur un support indépendant de youtube.

C'est pourquoi j'ai voulu créer ce script (et aussi pour m'amuser hein). Il va tout simplement scanner votre playlist et écrire tous les titres un par un dans un fichier texte. Comme ça vous pourrez faire un backup de la playlist à un instant donné, et quand un trou apparaitra suite à la suppression d'une vidéo, vous pourrez retrouver à quel titre cela correspondait !

# Prérequis
Le script est basé entièrement sur l'outil 'youtbe-dl' et n'est dispo que pour linux.

