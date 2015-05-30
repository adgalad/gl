#! /bin/bash

i=0
sala=""


if [ "$#" -eq 5 ]; then
	arreglo=( "$@" )
else
	echo Error en argumentos
fi

if [ "$1" = "-n" ]; then
	i=$[$i+1]
	sala="${arreglo[i]}"
	i=$[$i+1]
	l="${arreglo[i]}"
	i=$[$i+1]
	u="${arreglo[i]}"
	i=$[$i+1]
	p="${arreglo[i]}"
	rango=$(seq $l 1 $u)

	for j in $rango
	do
		ssh root@$sala$j.ac.labf.usb.ve "if ( dpkg -s $p | grep --quiet 'Status: install ok installed') then echo $sala$j lo tiene; else echo $sala$j no lo tiene; fi"  
	done

else 
	echo Pon el flag -n nombreSala limiteInferior limiteSuperior programa
fi