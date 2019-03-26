airmon-ng stop wlan0mon &>/dev/null 
service networking restart &>/dev/null &
service network-manager restart &>/dev/null &
echo -e "Done,Wifi Fixed"
