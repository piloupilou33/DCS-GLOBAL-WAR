""" Classe utilitaire """
import json
import csv
import configparser
import os
from slpp import slpp as lua


class Utils:
    """ Classe utilitaire """

    def __init__(self):
        fichierConfig = configparser.ConfigParser()
        fichierConfig.read(os.path.join(os.getcwd(), 'config.ini'))
        self.file_path = fichierConfig['mission']['CheminFichier']

    def parse_lua_to_json(self):
        """ retourne un parse json du fichier LUA donner en parametre """
        with open(self.file_path, 'r') as lua_file:
            code=lua_file.readlines()[1:]
        code="\n".join(code)
        return lua.decode(code)

    def parse_json_to_lua(self, data):
        return lua.encode(data)
    
    def to_file(self,data,format="json"):
        if format=="json":
            with open("output.json", "w") as json_file:
                json.dump(data,json_file, indent=4)
        if format=="lua":
            with open("output_lua", "w") as lua_file:
                lua_file.write("mission = \n")
                lua_file.write(data)

    def getParam(self):
        """ Lecture du fichier csv de recherche """
        with open(os.path.join(os.getcwd(), 'search.csv')) as csvfile:
            reader=csv.reader(csvfile)
            data = []
            for row in reader:
                data.append(row)
            return data
