#!/bin/bash

echo
echo GENERATING LEX
echo

java -jar ../jflex-1.6.1.jar src/postfixees/postfixees.lex

echo
echo COMPILING ...
echo

javac -cp src -d bin src/postfixees/TestPF.java && echo COMPILING OK !

echo
echo RUNNING TEST ...
echo

java -cp bin postfixees.TestPF testPost.txt

echo
echo
