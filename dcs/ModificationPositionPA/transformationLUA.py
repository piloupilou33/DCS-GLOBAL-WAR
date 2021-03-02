# -*- coding: utf-8 -*-

import configparser
import luaparser
from luaparser import ast
import luaparser.ast
import json

#On parse le fichier de configuration pour récupérer les éléments et les mettres en variables

fichierConfig = configparser.ConfigParser()
fichierConfig.read('config.ini')

# Déclaration de variables
emplacementFichier = fichierConfig['mission']['CheminFichier']


# Parsing du fichier LUA
with open(emplacementFichier, 'br') as f:
        tree = luaparser.ast.parse(f.read().decode('u8'))

# transformation en fichier json
for node in luaparser.ast.walk(tree):
    print(ast.to_pretty_json(node))


# chargement du fichier json

with open('output.json') as f:
  data = json.load(f)
