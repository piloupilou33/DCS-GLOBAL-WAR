""" Classe utilitaire """
import json
import csv
import configparser
import os
import zipfile
from pathlib import Path
from slpp import slpp as lua
from zipfile import ZipFile 


class Utils:
    """ Classe utilitaire """

    def __init__(self):
        fichierConfig = configparser.ConfigParser()
        fichierConfig.read(os.path.join(os.getcwd(), 'config.ini'))
        self.file_path = fichierConfig['mission']['CheminFichier']
    
    def unzip(self):
        """ Dezip le fichier dont le chemin est donne dans le fichier de conf """
        # opening the zip file in READ mode 
        with ZipFile("{}.zip".format(self.file_path), 'r') as zip: 
            # printing all the contents of the zip file 
            zip.printdir() 
        
            # extracting all the files 
            print('Extracting all the files now...') 
            zip.extractall("extract") 
            print('Done!')
    
    def zip_dir(self):
        foldername=self.file_path.split("/")[-1]
        target_dir="extract"
        zipobj = zipfile.ZipFile(foldername + '.zip', 'w', zipfile.ZIP_DEFLATED)
        rootlen = len(target_dir) + 1
        for base, dirs, files in os.walk(target_dir):
            for file in files:
                fn = os.path.join(base, file)
                zipobj.write(fn, fn[rootlen:])

    def parse_lua_to_json(self):
        """ retourne un parse json du fichier LUA donner en parametre """
        with open("extract/mission", 'r', encoding="utf-8") as lua_file:
            code=lua_file.readlines()[1:]
        code="\n".join(code)
        return lua.decode(code)

    def parse_json_to_lua(self, data):
        return lua.encode(data)
    
    def to_file(self,data,format="json"):
        if format=="json":
            with open("output.json", "w", encoding="utf-8") as json_file:
                json.dump(data,json_file, indent=4)
        if format=="lua":
            with open("mission", "w", encoding="utf-8") as lua_file:
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
