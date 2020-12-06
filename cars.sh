#! /bin/bash
# cars.sh
# Juliana Glodek

while true
do
	echo "Type 1 to add a new car"
	echo "Type 2 to list the cars in inventory"
	echo "Type 3 to quit"
	read NUM

	case "$NUM" in
		"1") 
			echo "Enter the year: "; read YEAR
			echo "Enter the make: "; read MAKE
			echo "Enter the model: "; read MODEL
		
			new_car=""	
			new_car="${YEAR}:${MAKE}:${MODEL}"
			echo "$new_car" >> My_old_cars.txt;;
		"2")
			sort My_old_cars.txt;;
		"3")
			echo "Goodbye!"
			break;;
	esac
done
