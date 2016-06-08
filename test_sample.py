import geojson
from path import path

import json
import glob

def test_geojson():
    try:
        s = path("mymap.geojson").bytes()
        rawJson = geojson.loads(s)
        assert True
    except:
        assert False

def test_combined():
    try:
        s = path("combinedmap.geojson").bytes()
        rawJson = geojson.loads(s)
        assert True
    except:
        assert False
