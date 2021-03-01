# MISSION DCSGW - GLOBAL WAR - SCRIPT

-----------------------------------------------------------------------------------
### Description : 

blabla
blabla

-----------------------------------------------------------------------------------
### Mise en place : 
	Dans le fichier de mission *.miz créé avec l'éditeur de mission. 
		=> Créez les éléments nécessaires :
			- Porte avion, CVN7x / ... (Utilisation du script Airboss possible)
			
		Dans un déclencheur, établissez comme suit : 
		 1 - 
		 2 - 
		 3 - 
		 
-----------------------------------------------------------------------------------

Ligne de code pour Init mission dans le .miz
- Definition du dossier de mission / script : 
path_scripts = "C:\\Scripts\\DCS-GLOBAL-WAR\\DCSGW\\"
- Lancement fichier init : 
assert(loadfile(path_scripts .. "File_initialisation_mission.lua"))()
