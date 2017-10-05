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
