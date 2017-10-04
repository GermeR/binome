#!/bin/bash

echo
echo GENERATING LEX
echo

java -jar ../jflex-1.6.1.jar src/exemple1/exemple1.lex

echo
echo COMPILING ...
echo

javac -cp src -d bin src/exemple1/TestEx1.java && echo COMPILING OK !

echo
echo RUNNING TEST ...
echo

java -cp bin exemple1.TestEx1 test.txt

echo
echo
