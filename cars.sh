#! /bin/bash
# cars.sh
# Sean Robbins

cont=true
while $cont
do
	echo "Cars Storage System: "
	echo "---------------------"
	echo "What do you want to do"
       	echo "1: Add a car" 
	echo "2: list all cars"
	echo "Q: quit"
       	read UsrInpt
	case "$UsrInpt" in
		1) 
			echo "Enter car Year: "; read Cyear
			echo "Enter Car Make: "; read Cmake
			echo "Enter Car Model: "; read Cmodel
			echo $Cyear : $Cmake : $Cmodel >> My_old_cars
			sort -o My_old_cars My_old_cars;;
		2)
		       	cat My_old_cars;;
		Q) 
			cont=false;;
	esac
done
echo "Goodbye"
	
	

