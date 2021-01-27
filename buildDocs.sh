#!bin/zsh
git add .
git commit -a -m 'Update site'
git push
git checkout master
mkdocs build -f mkdocs.yml
cp -r site ../site
git checkout gh-pages
cp -r ../site/. ./
rm -rf ../site
git add .
git commit -a -m 'Update site'
git push
