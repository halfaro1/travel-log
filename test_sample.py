# content of test_sample.py
import geojson
from path import path

def func(x):
    return x + 1

def test_answer():
    assert func(3) == 5

def test_geojson():
    try:
        s = path("class-pins.topojson").bytes()
        rawJson = geojson.loads(s)
        return True
    except:
        return False
    #print s

    #my_point = geojson.Point((43.24, -1.532))
    #dump = geojson.dumps(s, sort_keys=True)
    #print dump
    #print geojson.loads( s )

    #validation = geojson.is_valid( rawJson )
    #print validation



print test_geojson();
