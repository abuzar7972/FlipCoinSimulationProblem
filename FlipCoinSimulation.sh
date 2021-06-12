#!/bin/bash -x
heads=0
tails=0
while [ $heads ]
do
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq 0 ]
	then
	heads=$(($heads+1))
	else
	tails=$(($tails+1))
fi
if [ $heads -eq 21 ]&[ $tails -eq 21 ] 
then 
	break
fi 
done
echo "Number of heads:: " $heads
echo "Number of tails:: " $tails
if [ $heads -ge $tails ]
then
	result=$(($heads-$tails))
	echo "Heads Won by:: " $result
	else
	result=$(($tails-$heads))
	echo "Tails Won by:: " $result
fi
if [ $result -eq 0 ]
then
	echo "Tie"
fi
