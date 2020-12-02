#!/bin/bash
#cars.sh
#Everett Prussak


num=1
while [ "$num" -ne "3" ]; do
        echo "Enter 1 to add car, 2 to view cars, and 3 to exit: "; read num
                case "$num" in
                        "1")
                                echo "Enter Year of Car: "
                                read year
                                echo "Enter Make of Car: "
                                read make
                                echo "Enter Model of Car: "
                                read model
                                x=":"
                                total="$year$x$make$x$model"
                                echo "$total" >> my_old_cars.txt
                                ;;
                        "2")
                                sort my_old_cars.txt
                                ;;
                        "3")
                                echo "Goodbye"
                                > my_old_cars.txt;;
                esac
done
