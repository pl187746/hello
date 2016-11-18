#!/bin/sh
rm -rf depbin
git clone --branch=bin --depth=5 https://pl187746:$ASDF@github.com/pl187746/hello depbin
cd depbin
rm -rf target
mkdir target
cp -f ../target/*.jar ./target/
git config --local user.name Travis
git config --local user.email 187746@edu.p.lodz.pl
git add -A
git commit -m "build"
git push -f origin bin
cd ..
rm -rf depbin
echo "Build deployed"
