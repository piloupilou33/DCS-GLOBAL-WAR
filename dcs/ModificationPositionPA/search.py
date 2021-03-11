""" Classe re recherche """
import json

class Search:
    """ Permet de rechercher dans un JSON """

    def __init__(self, json_data):
        self.json_data = json_data
    
    def search(self, key_list):
        """ Parcours du json en fonction de la liste de clé en parametre """

        if key_list is None or len(key_list) == 2:
            return self.json_data
        else:
            index=key_list[0]
            try:    
                index=int(index)
                self.json_data = self.json_data[index]
            except Exception as e:
                index=key_list[0]
                self.json_data = self.json_data[index]
                pass
            key_list = key_list[1:]
            
            return self.search(key_list)


