#!/bin/bash 

echo Main Name ist $1 

# Gretl
if [ $1 == 'Gretl'  ]; then
	echo Ich bin ein Hund
# Kai
elif [ $1 != 'Gretl'  ]; then
#elif [ $1 = 'Kai'  ]; then
	echo Ich bin ein Mensch
fi


#-eq
#-ne
#-gt
#-ge
#-lt
#-le

