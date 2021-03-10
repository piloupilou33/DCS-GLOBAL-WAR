import time
import os
import json
from utils import Utils
from search import Search



#init
parseur=Utils()
parseur.unzip()
json_data=parseur.parse_lua_to_json()
#parseur.to_file(json_data)
blueTeam=Search(json_data)

#search
lst_csv=parseur.getParam()
for line in lst_csv:
    blueTeam.json_data=json_data
    unit= blueTeam.search(line)
    #update
    updated_unit=unit
    updated_unit["x"]=float(line[-2])
    updated_unit["y"]=float(line[-1])
    #save
    json_dump = json.dumps(json_data)
    json_dump = json_dump.replace(json.dumps(unit), json.dumps(updated_unit))
    parseur.to_file(parseur.parse_json_to_lua(json.loads(json_dump)),"lua")
parseur.zip()
os.remove("mission")
print("File Removed!")