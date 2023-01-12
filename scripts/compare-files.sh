#!/bin/bash

# Für alle Dateien im Heimatverzeichnis soll der Typ (regulär, Verzeichnis, ausführbar, Symlink) ermittelt werden.

# Mittels Kommandosubstitution werden sämtliche Dateien im Heimatverzeichnis
# des aufrufenden Benutzers in der Variablen 'dir' gespeichert.
# Wir nutzen hier 'find' anstelle von 'ls', da 'find' im Gegensatz zu 'ls' 
# den absoluten Pfad zu den Dateien ausgibt. Diesen benötigen wir, um die 
# Datei auf ihren Typ hin überprüfen zu können.
dir=$(find $HOME)

# Jede gefundene Datei durchläuft die folgenden Prüfungen.
# Hier ist auf die Reihenfolge zu achten:
# Eine ausführbare Datei ist natürlich auch eine reguläre Datei,
# genauso verhält es sich auch mit Symlinks etc (in Linux ist alles 
# eine Datei).
# Die Reihenfolge der Tests ist also entscheidend für ein korrektes
# Ergebnis.
# Auch hier werden wieder andere Vergleichsoperatoren verwendet als 
# bei Integern und Strings
for file in $dir 
do
    #if test -d $file
    if [ -d $file ]
    then
    	echo $file ist ein Verzeichnis
    elif [ -x $file ]
    then
    	echo $file ist eine ausführbare Datei
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

