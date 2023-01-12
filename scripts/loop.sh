#!/bin/bash

# Mit Loops können Aktionen wiederholt ausgeführt werden.

# seq funktioniert ähnlich wie range() in python,
# es werden hier die Zahlen 1 bis 10 nacheinander ausgegeben.
# Die Variable number kann frei gewählt werden, hier könnte auch 
# jeder andere Variablenname stehen.
# $number enthält pro Schleifendurchgang das jeweilige Element.
# In diesem Fall beim ersten Durchlauf die 1, beim zweiten Durchlauf
# die 2, beim dritten die 3 usw.
echo 'for-loop seq 1 bis 10:'
for number in $(seq 1 10)
do
	echo $number
done
# jede for-Schleife muss mit einem 'done' beendet werden

# Leerzeile
echo

# mit einem for-loop kann auch jedes Element eines "Arrays" 
# ausgegeben werden etc.
var="eins zwei drei vier fünf"

echo 'for-loop elemente variable/array:'
for element in $var
do
	echo $element
done
