#!/bin/bash

## Main script, will randomly ouput a txt file from the txt folder with lolcat
## The script stop when pressing ctrl+c

trap "exit" INT
while true
do
	for i in $(ls ~/.asciidle/txt/*.txt | shuf -n 1)
	do
		lolcat $i -af -d 3
	done
done