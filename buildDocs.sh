#!bin/bash
git checkout master
python /home/$USER/.local/bin/mkdocs build -f mkdocs.yml
cp -r site ../site
git checkout gh-pages
cp -r ../site/. ./
rm -rf ../site
git add .
git commit -a -m 'Update site'
git push
