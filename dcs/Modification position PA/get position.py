# -*- coding: utf-8 -*-

import configparser
import luaparser
from luaparser import ast
import luaparser.ast

#On parse le fichier de configuration pour récupérer les éléments et les mettres en variables

fichierConfig = configparser.ConfigParser()
fichierConfig.read('config.ini')

# Déclaration de variables
emplacementFichier = fichierConfig['mission']['test']


# Parsing du fichier LUA
with open(fichierConfig['mission']['cheminFichier'], 'br') as f:
    tree = luaparser.ast.parse(f.read().decode('u8'))

for node in luaparser.ast.walk(tree):
    print(node)


