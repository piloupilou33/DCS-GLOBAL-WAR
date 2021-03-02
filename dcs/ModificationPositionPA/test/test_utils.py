import unittest
import luaparser
import os
import json
from ModificationPositionPA.utils import Utils


class Test_parse(unittest.TestCase):

    def test_a_init(self):
        parseur=Utils()
        self.assertIsNotNone(parseur, "Should not be None")
        self.assertIsNotNone(parseur.file_path, "file_path should not be None")

    def test_b_parse_lua_to_json(self):
        parseur=Utils()
        json=parseur.parse_lua_to_json()
        self.assertIsNotNone(json, "json should not be None ")
    
    def test_c_to_file(self):
        parseur=Utils()
        json=parseur.parse_lua_to_json()
        parseur.to_file(json)
        self.assertTrue(os.path.exists("output.json"), "output.json shloud exists ")
        
    def test_d_getParam(self):
        parseur=Utils()
        params=parseur.getParam()
        self.assertGreater(len(params),0,"len(params) shloud be 9 ")
        

if __name__ == '__main__':
    unittest.main()