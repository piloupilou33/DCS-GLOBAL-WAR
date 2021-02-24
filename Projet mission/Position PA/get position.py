# -*- coding: utf-8 -*-

import dcs
import configparser
cfg = configparser.ConfigParser()
cfg.read('config.ini')
fichier = cfg['mission']['nomFichier']

print(fichier)

