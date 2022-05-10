#! /bin/bash
spinner=( '|' '/' '-' '\')

spin(){
    echo -n "Instalacja"
    for i in "${spinner[@]}"
    do
        echo -ne "."
        sleep 0.2
        done
}
echo "$(tput setaf 3)
   _____  _______________   __   __ 
  /  _/ |/ / __/_  __/ _ | / /  / / 
 _/ //    /\ \  / / / __ |/ /__/ /__
/___/_/|_/___/ /_/ /_/ |_/____/____/  (_) (_) (_)

"
spin
cd ..
mv DESTRUCTOR $HOME/Pulpit/DESTRUCTOR
cd $HOME/Pulpit/DESTRUCTOR
sudo apt-get install lolcat
sudo apt-get install figlet
sudo apt-get install hping3
sudo apt-get install gnome-terminal
sudo chmod +x Scripts
sudo chmod +x Tools
while true
do
 read -r -p "Uruchomić skrypt ? (y/n) - " start
 
 case $start in
     [yY][eE][sS]|[yY])
  clear
  cd Scripts
  ./main.sh
 break
 ;;
     [nN][eE][sS]|[nN])
  echo "Instalacja zakończona !" | lolcat
  exit 1
 break
        ;;
     *)
 echo "Nieprawidłowa komenda" | lolcat
  ;;
  esac
done