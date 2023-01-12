#!/bin/bash 

# Wird dem Skript das Argument 'Gretl' übergeben, soll
# "Ich bin ein Hund" ausgegeben werden, ansonsten 
# "Ich bin ein Mensch".

echo Main Name ist $1 

# Im Gegensatz zum Vergleich/Test auf Integer müssen 
# beim Vergleich von Strings andere Operatoren verwendet 
# werden. Anstatt wie bei Integern mit '-eq' auf Gleichheit
# zu prüfen, verwenden wir hier das einfach oder doppelte
# Gleichheitszeichen (= oder ==).
# Wollen wir auf Ungleichheit prüfen, verwenden wir != 
# anstatt '-ne' usw.
#
# Eine Übersicht findet man mit 'help test'.

# Gretl
if [ $1 == 'Gretl'  ]; then
	echo Ich bin ein Hund
# Anstatt des 'elif' könnte hier auch einfach nur ein 'else'
# stehen, Logik und Sinn wären gleich. Es steht an dieser Stelle 
# als ein Beispiel zur Prüfung auf Ungleichheit.
elif [ $1 != 'Gretl'  ]; then
#elif [ $1 = 'Kai'  ]; then
	echo Ich bin ein Mensch
fi
