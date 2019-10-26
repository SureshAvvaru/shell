#!/bin/bash

read -p "How old are you  ?" age


if [ $age -ge 21 ]
then
echo "you can drive"

elif [ $age -eq 20 ]
then
echo "you can drive next year"
else
echo "you cant drive"
fi

