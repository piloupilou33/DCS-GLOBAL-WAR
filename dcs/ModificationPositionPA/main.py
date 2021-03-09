import time
from utils import Utils
from search import Search
import json


while True:
    #init
    parseur=Utils()
    json_data=parseur.parse_lua_to_json()
    #parseur.to_file(json_data)
    blueTeam=Search(json_data)

    #search
    unit= blueTeam.search(parseur.getParam()[0])
    #update
    updated_unit=unit
    updated_unit["x"]=parseur.getParam()[0][-2]
    updated_unit["y"]=parseur.getParam()[0][-1]
    #save
    json_dump = json.dumps(json_data)
    json_dump = json_dump.replace(json.dumps(unit), json.dumps(updated_unit))
    parseur.to_file(parseur.parse_json_to_lua(json.loads(json_dump)),"lua")
    time.sleep(300)