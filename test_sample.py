import geojson
from path import path

import json
import glob

def test_geojson():
    try:
        s = path("class-pins.topojson").bytes()
        rawJson = geojson.loads(s)
        assert True
    except:
        assert False

def test_combined():
    try:
        s = path("combinedgeojson.geojson").bytes()
        rawJson = geojson.loads(s)
        assert True
    except:
        assert False
