#!/bin/bash

## GERME Robin && BAUDRY Oscar
# mailto:"dimitri.gallois@imria.fr"

echo "** EXO 1"

echo "** Q1 :"
egrep --color=auto nez Cyrano.txt

echo "** Q2 :"
egrep --color=auto '\([^()]*\)' Cyrano.txt

echo "** Q3 :"
egrep --color=auto '\b[[:alpha:]]{4}\b' Cyrano.txt

echo "** Q4 :"
egrep --color=auto -o "^[^ ]+ :" Cyrano.txt

echo "** EXO 2"

echo "** Q1 :"
valeurAtribut='"([^"<&]|&[a-ZA-Z:_][a-zA-Z0-9:_.-]*;)*'

egrep -m 10 --color=auto $valeurAtribut html/contact.html

echo "** Q2 :"

nomXML='[a-zA-Z:_][a-zA-Z0-9:_.-]*'

#egrep -m 10 --color=auto $nomXML html/contact.html

echo "** EXO 3"

echo "** Q1 :"

egrep --color=auto '\,[0-9]B(IS)?|\,[0-9]T(ER)?' bano-59009.csv

echo "** Q2 :"

egrep --color=auto '([^,])*,([^,])*,Ruelle ([^,]*,?)*' bano-59009.csv

echo "** Q3 :"

egrep --color=auto '^([^,]*),[^,],([^(a-z)] ?)*' bano-59009.csv
