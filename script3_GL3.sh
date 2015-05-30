#!/bin/bash


while getopts :a:b:c FLAG;
do
	if [ $FLAG = "b" -a $# -gt 2 ]; 
	then
		if [ $2 = "a" ];
		then
			if [ $# != 5 ];
			then 
				for i in {2..22} 
				do
					echo 159.90.9.$i
					ssh root@159.90.9.$i "loadkeys $5"
				done
			else
				l=$[$3+1]
				u=$[$3+1]
				rango=$(seq $l 1 $u)
				for i in $rango 
				do
					ssh root@159.90.9.$i "loadkeys $5"
				done
			fi
		elif [ $2 = "e" ];
		then 
			if [ $# != 5 ];
			then 
				for i in {27..51} 
				do
					ssh root@159.90.9.$i "loadkeys $5"
				done
			else
				l=$[$3+26]  ##
				u=$[$3+26]  ##
				rango=$(seq $l 1 $u)
				for i in $rango
				do
					ssh root@159.90.9.$i "loadkeys $5"
				done
			fi
		elif [ $2 = "f" ]; 
		then
			if [ $# != 5 ];
			then 
				for i in {52..76} 
				do ##
					ssh root@159.90.9.$i "loadkeys $5"
				done
			else
				l=$[$3+51]  ##
				u=$[$3+51]  ##
				rango=$(seq $l 1 $u)
				for i in $rango 
				do
					ssh root@159.90.9.$i "loadkeys $5"
				done
			fi
		elif [ $2 = "et" ];
		then
			if [ $# != 5 ];
			 then 
				for i in {77..94} 
				do ##
					ssh root@159.90.9.$i "loadkeys $5"
				done
			else
				l=$[$3+76]  ##
				u=$[$3+76]  ##
				rango=$(seq $l 1 $u)
				for i in $rango
				do
					ssh root@159.90.9.$i "loadkeys $5"
				done
			fi
		else
			echo -e "Error con los argumentos. Debe ser\n -a [sala <rangoinferior rangosuperior> lenguaje], Para usar IP\n -b [sala <rangoinferior rangosuperior> lenguaje], Para usar Dominio\n El rango es opcional."
		fi
	elif [ $FLAG = "a" -a $# -gt 2 ]; 
	then
		if [ $2 = "a" -o $2 = "e" -o $2 = "f" -o $2 = "et" ];
		then
			if [ $# -eq 5 ];
			then
				rango=$(seq $3 1 $4)
				for i in $rango
				do
					ssh root@$2$i.ac.labf.usb.ve "loadkeys $5"
				done
			else
				for i in {1..25} 
				do
					ssh root@$2$i.ac.labf.usb.ve "loadkeys $5"
				done
			fi
		fi
	else
		echo -e "error con los argumentos. Debe ser\n -a [sala <rangoinferior rangosuperior> lenguaje], Para usar IP\n -b [sala <rangoinferior rangosuperior> lenguaje], Para usar Dominio\n El rango es opcional."
	fi
done