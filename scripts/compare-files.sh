#!/bin/bash

# Für alle Dateien im Heimatverzeichnis soll der Typ (regulär, Verzeichnis, ausführbar, Symlink) ermittelt werden

dir=$(find $HOME)

#files="eins zwei drei vier"
#
#for file in $files; do
#	echo $file
#done

for file in $dir 
do
    if [ -d $file ]
    then
    	echo $file ist ein Verzeichnis
    elif [ -x $file ]
    then
    	echo $file ist ausführbar
    elif [ -L $file ]
    then
    	echo $file ist ein Symlink
    elif [ -f $file ]
    then
    	echo $file ist eine reguläre Datei
    else
    	echo $file ist ein anderer Dateityp
    fi
done

