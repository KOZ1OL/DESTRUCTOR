#! /bin/bash
figlet "Destructor" | lolcat
spin(){
    echo -n "Sprawdzam dostępność aktualizacji"
    for i in "${spinner[@]}"
    do
        echo -ne "."
        sleep 0.2
        done
}
git pull
echo "Wszystko zaktualizowane" | lolcat
figlet "Destructor" | lolcat
read -r -p "Wprowadź hasło: " a
if [ $a = olborskitochuj ] ; then
	echo "Prawidłowe hasło !" | lolcat
	sleep 3
	clear
	figlet "Destructor" | lolcat
	echo "Witam w Destructorze nie zniszcz za dużo :) " | lolcat
	echo -e "1. DEAUTH WIFI NETWORK \n2. DOSSER" | lolcat
	echo "Przerwanie działania skryptu ctrl+c" | lolcat
while true
do
 read -r -p "Wybierz opcję  - " input 
 
 case $input in
     [1][eE][sS]|[1])
  echo "Startuje skrypt... " | lolcat
  cd /$HOME/Pulpit/DESTRUCTOR/Tools
  sudo ./aircracker.sh
 break
 ;;
     [2][oO]|[2])
  echo "Startuje skrypt... " | lolcat
  cd /$HOME/Pulpit/DESTRUCTOR/Tools
  sudo ./dosser.sh
 break
 ;;
     *)
 echo "Nieprawidłowa komenda" | lolcat 
 ;;
 esac
done
else 
	echo "Złe hasło !" | lolcat
	exit
fi