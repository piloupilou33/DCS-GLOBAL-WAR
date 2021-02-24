# -*- coding: utf-8 -*-

import dcs
import configparser

#On parse le fichier de configuration pour récupérer les éléments et les mettres en variables

fichierConfig = configparser.ConfigParser()
fichierConfig.read('config.ini')

# déclaration des variables 

fichier = fichierConfig['mission']['nomFichier']
idPA = fichierConfig['mission']['idPorteAvion']


# Chargement du fichier de la mission
mission = dcs.Mission()
mission.load_file(fichier)



