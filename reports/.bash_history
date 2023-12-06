find -not -name "*.html" -type f -delete 
find -not -name "*.html" -type f
git add */
git status
git status .
find reports/ -name "*.html"
cd reports/
find -name "*.html"
find -name "*.html" -exec echo cp {} ../examples/()
find -name "*.html" -exec echo cp {} ../examples/{}
find -name "*.html" -exec echo cp {} ../examples/{} \;
find ./ -name "*.html" -exec echo cp {} ../examples/{} \;
find . -name "*.html" -exec echo cp {} ../examples/{} \;
find -name "*.html" -exec echo cp {} ../examples/{} \;
find -name "*.html" -exec cp {} ../examples/{} \;
cp *.html ../../examples/performance/
cd ..
cd ..
mv v_1.md reports/
cd reports/
ls
find v_1/
git add .
git status .
find . -type f -name "*.html" -exec sh -c 'mv "$1" "$(echo "$1" | sed "s/\.html$/.metta.html/")"' sh {} \;
cd ../reports/
find . -type f -name "*.metta.html" -exec sh -c 'mv "$1" "$(echo "$1" | sed "s/\.metta\.html$/.html/")"' sh {} \;
find . -type f -name "*.html" -exec sh -c 'mv "$1" "$(echo "$1" | sed "s/\.html$/.metta.html/")"' sh {} \;
