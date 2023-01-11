#!/bin/bash 

# Folgende Variablen werden im Zusammenhang mit Argumenten verwendet:
# $0: Name des Skripts
# $1: erstes dem Skript übergebenes Argument
# $2: zweites dem Skript übergebenes Argument
# $3: drittes dem Skript übergebenes Argument usw.
# $#: Anzahl der dem Skript übergebenen Argumente

echo "Ausgabe des Namens des aufrufenden Skripts durch Variable '$0'"
echo 'Variable $0': $0
echo Anzahl der dem Skript übergebenen Argumente: $#

# Die eckigen Klammern beim if-Statement in BASH sind eine 
# Repräsentation des Builtins 'test'
# Daher sind die Leerzeichen vor und nach den Klammern wichtig
# test hat unterschiedliche Vergleichsoperatoren, je nachdem ob
# Integer, Strings oder Datein verglichen werden.
#
# Für Integer:
# -eq - equals - gleich
# -ne - not equals - ungleich
# -gt - greater than - grösser als
# -ge - greater equals - grösser gleich
# -lt - less than - kleiner als
# -le - less equals - kleiner gleich
# usw.
#
# Würde die Variable $# keinen Integer sondern einen String
# enthalten, käme es in der Zeile zu einem Fehler.

#if test $# -eq 3 ; then
if [ $# -eq 3 ]; then
	echo Main Name ist $1 
	echo Ich bin ein $2
	echo Ich $3 gerade
else
	echo Es müssen drei Argumente übergeben werden, übergeben wurden aber nur $#.
fi
