#!/bin/bash 

#echo 'Variable $0': $0
#echo Anzahl Argumente: $#

if [ $# -eq 3 ]; then
	echo Main Name ist $1 
	echo Ich bin ein $2
	echo Ich $3 gerade
else
	echo Es müssen drei Argumente übergeben werden, übergeben wurden aber nur $#.
fi



