#! /bin/bash
#cars.sh
# Anthony Walujono

car = "continue"
while ["$car" != "Quit"]
do
	echo "Main Menu"
	echo "Add) Type a car "
	echo "View) See the list of cars"
	echo -e "Quit) To Quit \n"
	echo "What do you want to do? "
	read car
	case "$car" in
	"Add")
		echo "Type the year of the car: "
		read YEAR
		echo "Type the make of the car: "
		read MAKE
		echo "Type the model of the car: "
		read MODEL
		echo "$YEAR:$MAKE:$MODEL" >> My_old_cars
	"View") 
		echo
		sort My_old_cars | tr ":" " "
		echo ;;
	"Quit")
		echo "Thanks for contrubuting"
		echo "Have a wonderful day"

	*)
		echo -e "ERROR\n";;
	esac
done

	
	
done
