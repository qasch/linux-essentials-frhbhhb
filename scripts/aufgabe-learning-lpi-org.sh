#!/bin/bash

# Aufgabe aus den Unterlagen von learning.lpi.org (4.1 Lesson 1, 
# Explorational Exercise 1):
# Erstellen Sie ein Skript, das eine beliebiege Anzahl an Argumenten 
# vom Benutzer entgegennimmt aber nur die Argumente ausgibt, die
# eine Zahl sind und grösser als 10.

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
# Neben der Variable $@ gibt es auch noch die Variable $* mit fast der 
# gleichen Bedeutung.
for argument in $@
do
	# Prüfung, ob das Argument eine Ganzzahl ist.
	# Der reguläre Ausdruck von grep prüft:
	# Am Anfang der Zeile ('^' ist eine Ziffer 
	# zwischen 0 und 9. Diese Ziffer darf bis
	# zum Zeilenende ('$') beliebig of vorkommen,
	# sonst nichts anderes.
	# Der Redirect nach '/dev/null' bewirkt, das
	# die gefundene Zahl nicht ausgegeben wird,
	# die Ausgabe also generell verworfen wird,
	# da wir sie nicht benötigen.
	echo $argument | grep "^[0-9]*$" > /dev/null
	# Hier wird geprüft, ob grep (das *direkt* zuvor ausgeführte Kommando)
        # etwas gefunden hat (Exit Status 0) oder nicht.
	# Der Test auf grösser als 10 wird somit nur auf Zahlen angewendet
	# und nicht auf Strings, was zu einem Fehler führen würde.
	if [ $? -eq 0 ]
	then
		if [ $argument -gt 10 ]
		then
			echo $argument
		fi
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
