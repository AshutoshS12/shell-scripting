#!/bin/bash

## Echo examples

## Printing Few Messages
echo -e "Hello User\nToday is a beautiful day\nToday's date is\t $(date)\nMy Name is Ashutosh Sar "

##Colored output
##Syntax :- echo -e "\e[COLmMessage" (To enable) , \e[0m (To disable)

echo -e "\e[31mLet's Continue\e[0m"

## Array


Name=(Ashutosh Asima Taliban)
echo "${Name [0]}"
echo "$ Name [1]";
echo "$ Name [2]";
echo  "The name of the First Person is ${Name [0]} and Second Person is ${Name [0]},Against of ${Name [0]}"

##Input--Read Command

read -p 'Enter your Name: ' FullName

echo -e "$FullName is a good boy"







