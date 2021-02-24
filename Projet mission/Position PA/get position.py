# -*- coding: utf-8 -*-

import dcs
import configparser

#On parse le fichier de configuration pour récupérer les éléments et les mettres en variables

cfg = configparser.ConfigParser()
cfg.read('config.ini')

# déclaration des variables 

fichier = cfg['mission']['nomFichier']
idPA = cfg['mission']['idPorteAvion']


# Chargement du fichier de la mission
mission = dcs.Mission()
mission.load_file(fichier)

mission.ship

