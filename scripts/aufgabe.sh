#!/bin/bash

anzahl_argumente=$#

# Prüfung, ob überhaupt Argumente übergeben wurden.
#
# Falls keine Argumente übergeben wurden, wird das Skript mit dem Kommando 
# exit beendet und der Exit Status 1 zurückgegeben. 
# Ohne exit würde trotzdem der Rest des Skripts abgearbeitet werden.
if [ $anzahl_argumente -eq 0 ]
then
	echo "Fehler: Dem Skript wurden keine Argumente übergeben."
	exit 1
fi


echo "Dem Skript wurden insgesamt $anzahl_argumente übergeben."

echo "Folgende Argumente haben einen numerischen Wert grösser 10:"

# In der Variablen $@ befinden sich alle dem Skript übergebenen Argumente
# getrennt durch ein Leerzeichen (-> Array).
for argument in $@
do
	if [ $argument -gt 10 ]
	then
		echo $argument
	fi
done

# Die folgenden zwei Zeilen sind hier zur Demonstration von Best Practice gegeben.
# Sinnfreier Weise wird hier geprüft, ob das zweite Argument gleich 10 ist. In diesem
# Fall soll "blub" ausgegeben werden.
# Ist das zweite Argument ungleich 10, wäre dies das letzte im Skript ausgeführte Kommando.
# Würden wir also das Skript ausführen und anschliessend den Exit Status mit "echo $?" 
# prüfen, bekämen wir eine 1 zurück, also die Meldung, dass das Skript *nicht* erfolgreich
# ausfeführt wurde, was ja nicht stimmt.
# Daher gilt es als Best Practice, ein Skript mit einem "exit 0" zu beenden.
[ $2 -eq 10 ] && echo blub
exit 0


