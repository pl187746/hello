#!/bin/sh
rm -rf depbin
git clone --branch=bin --depth=5 https://github.com/pl187746/hello depbin
cd depbin
rm -f *.jar
cp -f ../target/*.jar ./
git add -A
git commit -m "build"
cd ..
rm -rf depbin