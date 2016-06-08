var fs = require('fs');
var geomerge = require('geojson-merge');

var obj1 = JSON.parse( fs.readFileSync('point.geojson') );
var obj2 = JSON.parse( fs.readFileSync('linestring.geojson') );

//var merged = (geomerge( [obj1, obj2] ));
/* -----
var merge = require('./'),
    fs = require('fs');

process.stdout.write(JSON.stringify((process.argv.slice(2).map(function(n) {
    return JSON.parse(fs.readFileSync(n));
})), null, 2));
*/

var merged = JSON.stringify(obj1).concat(JSON.stringify(obj2));

/*console.log( geomerge( 'point.geojson', 'linestring.geojson' ));
*/

fs.writeFile("new.geojson", merged, function(err) {
    if(err) {
        return console.log(err);
    }

    console.log("The file was saved!");
});
