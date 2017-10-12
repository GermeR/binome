#!/bin/bash

## GERME Robin && BAUDRY Oscar

echo "** EXO 2"

echo "** Q1 :"
valeurAtribut='"([^"<&]|&[a-ZA-Z:_][a-zA-Z0-9:_.-]*;)*'

egrep -m 10 --color=auto $valeurAtribut html/contact.html

echo "** Q2 :"

nomXML='[a-zA-Z:_][a-zA-Z0-9:_.-]*'

egrep -m 10 --color=auto $nomXML html/contact.html
