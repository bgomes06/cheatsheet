#!/bin/bash

##########################################
#####      MY CHEATSHEET.SH         ######
##########################################

## DECLARE VARIABLES
N1=1
N2=5

## DECLARE FUNCTIONS


function fun_git() {
'
git init
git config --global user.email mail@gmail.com"
git add <file>
git commit -m "first commit"
git remote add origin https://github.com/<user>/<repo>.git
git push -u origin master

** IF YOUR REMOTE ADD ORIGIN SITE IS WRONG, OVERWRITE USING THIS: **
git remote set-url origin https://github.com/bgomes06/cs.git

** TO CHANGE SOMETHING BEFOR PUSH **
git commit --amend

'
}

function fun_ifelse() {
	if [ $N1 -gt $N2 ]; then
		echo 'N1 is greater than N2.'
	elif [ $N1 -lt $N2 ]; then
		echo 'N1 is lesser than N2.'
	else
		echo 'N1 and N2 are equal.'
	fi
}

function fun_while() {
	while [ $N1 -le $N2 ]; do
		echo 'N1='$N1
		((N1++))
	done
}

function fun_for() {
	for i in 1 2 3 4 5
	do
		echo $i
	done
}


echo 'Choose one option:'
echo '1) IF/ELSE'
echo '2) WHILE'
echo '3) FOR'
echo '4) REGEX'
read -p 'Your option: ' opt

case $opt in
	1) fun_ifelse $N1 $N2;;
	2) fun_while ;;
	3) fun_for ;;
	4) fun_regex ;;
	*) echo 'Wrong option. Aborting...'
esac
