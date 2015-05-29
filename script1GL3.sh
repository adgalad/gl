#!/bin/bash

IFS=":" read -a arreglo <<< $PATH

if [ $1 = "-d" ]; 
then
	for i in "${arreglo[@]}"
	do
		if [ $2 = $i ];
		then
			echo "El directorio si esta en PATH"
			exit
		fi
	done
	echo "El directorio no esta en PATH"
else
	for i in "${arreglo[@]}"
	do
		echo $i
		ls $i
	done
fi


