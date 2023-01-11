#!/bin/bash

# Für alle Dateien im Heimatverzeichnis soll der Typ (regulär, Verzeichnis, ausführbar, Symlink) ermittelt werden

# der Backslash \ sorgt für den Zeilenumbruch

# if-else Statements können auch über eine Kombination von logischen UND und ODER Verknüpfungen realisiert werden

for file in $dir 
do
    [ -d $file ] && echo $file ist ein Verzeichnis || \
    [ -x $file ] && echo $file ist ausführbar || \
    [ -L $file ] && echo $file ist ein Symlink || \
    [ -f $file ] && echo $file ist eine reguläre Datei || \
    echo $file ist ein anderer Dateityp
done

