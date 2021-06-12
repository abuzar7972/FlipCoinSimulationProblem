#!/bin/bash -x
heads=0
tails=0
read -p "Enter number of loops:: " n
for ((counter=1; counter<=$n; counter++))
do
randomCheck=$((RANDOM%2))
if [ $randomCheck -eq 0 ]
	then
	heads=$(($heads+1))
	else
	tails=$(($tails+1))
fi
done

echo "Number of heads:: " $heads
echo "Number of tails:: " $tails
