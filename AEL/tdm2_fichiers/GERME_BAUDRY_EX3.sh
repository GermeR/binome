#!/bin/bash

## GERME Robin && BAUDRY Oscar

echo "** EXO 3"

echo "** Q1 :"

egrep --color=auto '\,[0-9]B(IS)?|\,[0-9]T(ER)?' bano-59009.csv

echo "** Q2 :"

egrep --color=auto '([^,])*,([^,])*,Ruelle ([^,]*,?)*' bano-59009.csv

echo "** Q3 :"

egrep --color=auto '^([^,]*),[^,],([^(a-z)] ?)*' bano-59009.csv
