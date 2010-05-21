#!/bin/bash
REL=goblint-0.9.5-alpha1
mkdir $REL
cp goblint.exe $REL
cp LICENSE* $REL
cp ../cygpcre-7.dll $REL
svn export includes $REL/includes
svn export tests/regression $REL/tests
zip -qr $REL.zip $REL
rm -rf $REL