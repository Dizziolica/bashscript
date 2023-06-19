#!/bin/bash

echo "What username do you want to analyze?"
read -r name

word_count=$(grep -o -w "$name" usernameslogins.txt | wc -l)

if [ $word_count -eq 3 ]
then
    echo "The username '$name' is repeated $word_count times in this register, and login is blocked."
else
    echo "The username '$name' is repeated $word_count times in this register, and you have more tries."
fi


