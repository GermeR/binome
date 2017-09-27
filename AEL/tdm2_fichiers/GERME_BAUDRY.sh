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

egrep --color=auto $valeurAtribut contact.html

echo "** Q2 :"

nomXML='[a-zA-Z:_][a-zA-Z0-9:_.-]*'

#egrep --color=auto $nomXML contact.html
