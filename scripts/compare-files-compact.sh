#!/bin/bash

# Für alle Dateien im Heimatverzeichnis soll der Typ (regulär, Verzeichnis, ausführbar, Symlink) ermittelt werden

# der Backslash \ sorgt für den Zeilenumbruch

# if-else Statements können auch über eine Kombination von logischen UND und ODER Verknüpfungen realisiert werden.
# Diese Syntax findet man oft in Shell-Scripts, da sie sehr kompakt und 
# einfach(er) (Ansichtssache) zu lesen ist.
# Insbesondere für ein einfaches if ohne elif oder else bietet sich diese Schreibweise an.
#
# Zusatzinfo: Intern sind if-Statements meist eh als logische Verknüpfungen realisiert, das if ist eher 
# die Abstraktion der Programmierprache und wird vom Interprete oder Compiler wiederum in diese 
# logische Verknüpfung übersetzt.
# Das untere Beispiel funktioniert, da das && Vorang vor dem || hat. 
# Siehe Punkt-vor-Strich Rechnung in der Mathematik.
for file in $dir 
do
    [ -d $file ] && echo $file ist ein Verzeichnis || \
    [ -x $file ] && echo $file ist ausführbar || \
    [ -L $file ] && echo $file ist ein Symlink || \
    [ -f $file ] && echo $file ist eine reguläre Datei || \
    echo $file ist ein anderer Dateityp
done

