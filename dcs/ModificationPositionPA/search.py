""" Classe re recherche """

class Search:
    """ Permet de rechercher dans un JSON """

    def __init__(self, json_data):
        self.json_data = json_data

    def search(self, key_list):
        """ Parcours du json en fonction de la liste de clé en parametre """
        print(key_list)
        if key_list is None or len(key_list) == 0:
            return self.json_data
        else:
            print(type(key_list[0]))
            try:    
                key_list[0]=int(key_list[0])
            except Exception:
                pass
            self.json_data = self.json_data[key_list[0]]
            key_list = key_list[1:]
            return self.search(key_list)
