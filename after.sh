#!/bin/sh
rm -rf depbin
cd depbin
cp -f ../target/*.jar ./
cd ..
rm -rf depbin