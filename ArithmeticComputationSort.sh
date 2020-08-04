#!/bin/bash

echo " Arithmetic computation stimulation "

read -p "Enter the value  of a = " vara
read -p "Enter the value  of b = " varb
read -p "Enter the value  of c = " varc

exp1=($vara+$varb*$varc)
	echo " a+b*c = " $exp1
