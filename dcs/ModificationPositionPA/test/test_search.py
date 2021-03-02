import unittest

import os
import json
from ModificationPositionPA.utils import Utils
from ModificationPositionPA.search import Search


class Test_search(unittest.TestCase):

    def test_a_search_blue(self):
        parseur=Utils()
        json_data=parseur.parse_lua_to_json()
        parseur.to_file(json_data)
        blueTeam=Search(json_data)
        parseur.to_file(blueTeam.search(parseur.getParam()[0]))
        self.assertIsNotNone(json, "json should not be None ")

        
if __name__ == '__main__':
    unittest.main()