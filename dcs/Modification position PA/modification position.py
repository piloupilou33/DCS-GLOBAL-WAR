# -*- coding: utf-8 -*-

import configparser
import json

#On parse le fichier de configuration pour récupérer les éléments et les mettres en variables

fichierConfig = configparser.ConfigParser()
fichierConfig.read('config.ini')

# chargement du fichier json

with open('output.json') as f:
  data = json.load(f)

print(data)