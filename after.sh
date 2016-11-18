#!/bin/sh
rm -rf depbin
git clone --branch=bin --depth=5 https://github.com/pl187746/hello depbin
cd depbin
rm -f *.jar
cp -f ../target/*.jar ./
git config --local user.name Travis
git config --local user.email 187746@edu.p.lodz.pl
git add -A
git commit -m "build"
git push -f https://pl187746:$ASDF@github.com/pl187746/hello bin
cd ..
rm -rf depbin