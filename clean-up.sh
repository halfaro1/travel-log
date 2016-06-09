git rm mymap.topojson
git commit -m "reset [ci skip]"
git push --force --quiet "https://git@github.com/${GITHUB_REPO}.git" HEAD:master
