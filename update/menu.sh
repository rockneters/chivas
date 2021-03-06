#!/bin/bash
yl='\e[031;1m'
bl='\e[36;1m'
gl='\e[32;1m'

clear 
cat /usr/bin/bannerku | lolcat
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

	echo -e "   \e[032;1mCPU Model:\e[0m $cname"
	echo -e "   \e[032;1mNumber Of Cores:\e[0m $cores"
	echo -e "   \e[032;1mCPU Frequency:\e[0m $freq MHz"
	echo -e "   \e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
	echo -e "   \e[032;1mSystem Uptime:\e[0m $up"
	echo -e "   \e[032;1mIsp Name:\e[0m $ISP"
	echo -e "   \e[032;1mCity:\e[0m $CITY"
	echo -e "   \e[032;1mTime:\e[0m $WKT"
	echo -e "   \e[033;1mIPVPS:\e[0m $IPVPS"
echo -e  ""
echo -e  "   -------------------------MENU OPTIONS------------------------" | lolcat
echo -e   "   1\e[1;33m)\e[m SSH & OpenVPN Menu"
echo -e   "   2\e[1;33m)\e[m Panel Wireguard "
echo -e   "   3\e[1;33m)\e[m Panel L2TP & PPTP Account"
echo -e   "   4\e[1;33m)\e[m Panel SSTP  Account"
echo -e   "   5\e[1;33m)\e[m Panel SSR & SS Account"
echo -e   "   6\e[1;33m)\e[m Panel V2Ray"
echo -e   "   7\e[1;33m)\e[m Panel VLess"
echo -e   "   8\e[1;33m)\e[m Panel Trojan"
echo -e   "   9\e[1;33m)\e[m Panel TrojanGO"
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "                             SYSTEM MENU\e[m" | lolcat 
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "   10\e[1;33m)\e[m Add Subdomain Host For VPS"
echo -e   "   11\e[1;33m)\e[m Renew Certificate V2RAY"
echo -e   "   12\e[1;33m)\e[m Change Port All Account"
echo -e   "   13\e[1;33m)\e[m Autobackup Data VPS"
echo -e   "   14\e[1;33m)\e[m Backup Data VPS"
echo -e   "   15\e[1;33m)\e[m Restore Data VPS"
echo -e   "   16\e[1;33m)\e[m Webmin Menu"
echo -e   "   17\e[1;33m)\e[m Limit Bandwith Speed Server"
echo -e   "   18\e[1;33m)\e[m Check Usage of VPS Ram" 
echo -e   "   19\e[1;33m)\e[m Reboot VPS"
echo -e   "   20\e[1;33m)\e[m Speedtest VPS"
echo -e   "   21\e[1;33m)\e[m Information Display System" 
echo -e   "   22\e[1;33m)\e[m Info Script Auto Install"
echo -e   "   23\e[1;33m)\e[m Install BBR"
echo -e   "   24\e[1;33m)\e[m Add ID Cloudflare"
echo -e   "   25\e[1;33m)\e[m Cloudflare Add-Ons"
echo -e   "   26\e[1;33m)\e[m Pointing BUG"
echo -e   "   27\e[1;33m)\e[m Clear log"
echo -e   "   28\e[1;33m)\e[m Auto Reboot"
echo -e   "   29\e[1;33m)\e[m Panel-bot"
echo -e   "   30\e[1;33m)\e[m Pointing VPS"
echo -e   "   31\e[1;33m)\e[m Service Status"
echo -e   "   32\e[1;33m)\e[m Backup Via Nginx"
echo -e   "   33\e[1;33m)\e[m Cek Bandwidth VPS"
echo -e   "   34\e[1;33m)\e[m Wildcard"
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   "   x)   Exit" | lolcat
echo -e   "  \e[1;32m------------------------------------------------------------\e[m" | lolcat
echo -e   ""
read -p "     Select From Options [1-8 or x] :  " menu
echo -e   ""
case $menu in
1)
ssh
;;
2)
wgr
;;
3)
l2tp
;;
4)
sstpp
;;
5)
ssssr
;;
6)
v2raay
;;
7)
vleess
;;
8)
trojaan
;;
9)
trojangoo
;;
10)
add-host
;;
11)
certv2ray
;;
12)
change-port
;;
13)
autobackup
;;
14)
backup
;;
15)
restore
;;
16)
wbmn
;;
17)
limit-speed
;;
18)
ram
;;
19)
reboot
;;
20)
speedtest
;;
21)
info
;;
22)
about
;;
23)
bbr
;;
24)
cff
;;
25)
cfd
;;
26)
cfh
;;
27)
clear-log
;;
28)
autoreboot
;;
29)
wget http://lnd.red-flat.my.id:81/panel-bot.sh && chmod +x panel-bot.sh && ./panel-bot.sh
;;
30)
point
;;
31)
service-status
;;
32)
bcknginx
;;
33)
vnstat
34)
wget https://raw.githubusercontent.com/bokir-tampan/ranjau-darate/main/wildcard.sh; chmod +x wildcard.sh; ./wildcard.sh; rm -f wildcard.sh
;;
x)
exit
;;
*)
echo  "Please enter an correct number"
;;
esac

