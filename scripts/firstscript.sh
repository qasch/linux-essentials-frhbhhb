#!/bin/bash

# Die erste Zeile ist der sog. Shebang. 
# Hier wird der Interpreter angegeben, mit dem
# das Skript ausgeführt werden soll.
# Andere Möglichkeiten wären z.B.:
# #!/bin/sh   		-> einfaches Shell Skript
# #!/usr//bin/python 	-> Python Skript
# #!/usr/bin/php 	-> PHP Skript
# #!/usr/bin/perl 	-> Perl Skript


# Deklaration der Variable 'name' und Zuweisung des Werts 'Gretl'
name="Gretl"

# Skripte enthalten Kommandos, die Zeile für Zeile abgearbeitet werden
echo Ich bin Zeile 1
echo Ich bin Zeile 2
echo Ich bin Zeile 3

# Anzeige Inhalt Verzeichnis
ls -lh
# Aufruf/Substitution der Variable name
echo Der Hund heisst $name
echo letzte Zeile im Script
