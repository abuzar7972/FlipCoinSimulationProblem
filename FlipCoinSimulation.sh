#!/bin/bash -x
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq 0 ]
	then
	echo "Heads"
	else
	echo "Tails"
fi
