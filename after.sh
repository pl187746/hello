#!/bin/sh
git checkout bin
echo "Hello" >> hello.txt
git add hello.txt
git commit -m "hehe"
git checkout master
