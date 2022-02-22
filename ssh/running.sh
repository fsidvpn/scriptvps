#!/bin/bash
yl='\e[031;1m'
bl='\e[36;1m'
gl='\e[32;1m'
clear 
cat /usr/bin/bannerku | lolcat
echo -e ""
ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
WKT=$(curl -s ipinfo.io/timezone )
IPVPS=$(curl -s ipinfo.io/ip )
DOMAIN=$(cat /etc/xray/domain)
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
	echo -e "   \e[032;1mIPVPS:\e[0m $IPVPS"
	echo -e "   \e[032;1mIDOMAIN:\e[0m $DOMAIN"
echo -e  ""
echo -e  "   =======================CEK LAYANAN========================"| lolcat
#!/bin/bash                                                                             
red="\e[1;31m"                                                                          
green="\e[0;32m"                                                                        
NC="\e[0m"                                                                              
figlet -f slant CEK STATUS LAYANAN | lolcat
       echo -e ""
status="$(systemctl show ssh.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " SSH               : SSH Service is "$green"running"$NC""                  
else                                                                                    
echo -e " SSh               : SSH Service is "$red"not running (Error)"$NC""        
fi
status="$(systemctl show stunnel4.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Stunnel           : Stunnel Service is "$green"running"$NC""                  
else                                                                                    
echo -e " Stunnel           : Stunnel Service is "$red"not running (Error)"$NC""        
fi
status="$(systemctl show websocket.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Websocket         : Websocket Service is "$green"running"$NC""                  
else                                                                                    
echo -e " Websocket           : Websocket Service is "$red"not running (Error)"$NC""        
fi                                                                                
status="$(systemctl show dropbear.service --no-page)"                                   
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " DropBear          : DropBear Service is "$green"running"$NC""                  
else                                                                                    
echo -e " DropBear          : DropBear Service is "$red"not running (Error)"$NC""        
fi                                                                                      
status="$(systemctl show xray.service --no-page)"                                 
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " V2ray Non TLS     : V2ray Non TLS Service is "$green"running"$NC""              
else                                                                                    
echo -e " V2ray Non TLS     : V2ray Non TLS Service is "$red"not running (Error)"$NC""    
fi                                                                                      
status="$(systemctl show xray.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " V2ray TLS         : V2ray TLS Service is "$green"running"$NC""                
else                                                                                    
echo -e " V2ray TLS         : V2ray TLS Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show xray.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Vless TLS         : Vless TLS Service is "$green"running"$NC""                
else                                                                                    
echo -e " Vless TLS         : Vless TLS Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show xray.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Vless Non TLS     : Vless Non TLS Service is "$green"running"$NC""                
else                                                                                    
echo -e " Vless Non TLS     : Vless Non TLS Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show trojan-go --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Trojan            : Trojan Service is "$green"running"$NC""                
else                                                                                    
echo -e " Trojan            : Trojan Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show squid.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Squid             : Squid Service is "$green"running"$NC""                
else                                                                                    
echo -e " Squid             : Squid Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show openvpn.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Openvpn           : Openvpn Service is "$green"running"$NC""                
else                                                                                    
echo -e " Openvpn           : Openvpn Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show ws-ovpn.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Ws-ovpn           : Websocket Openvpn Service is "$green"running"$NC""                
else                                                                                    
echo -e " Ws-ovpn           : Websocket Openvpn Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show wg-quick@wg0 --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Wireguard         : Wireguard Service is "$green"running"$NC""                
else                                                                                    
echo -e " Wireguard         : Wireguard Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show accel-ppp.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " SSTP              : SSTP Service is "$green"running"$NC""                
else                                                                                    
echo -e " SSTP              : SSTP Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show ssrmu --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " SSR               : SSR Service is "$green"running"$NC""                
else                                                                                    
echo -e " SSR               : SSR Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show shadowsocks-libev.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Shadowsocks       : Shadowsocks Service is "$green"running"$NC""                
else                                                                                    
echo -e " Shadowsocks       : Sadhowsocks Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show xl2tpd.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " L2tp              : L2tp Service is "$green"running"$NC""                
else                                                                                    
echo -e " L2tp              : L2tp Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show pptpd.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " PPTP              : PPTP Service is "$green"running"$NC""                
else                                                                                    
echo -e " PPTP              : PPTP Service is "$red"not running (Error)"$NC""      
fi
status="$(systemctl show nginx.service --no-page)"                                      
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)                     
if [ "${status_text}" == "active" ]                                                     
then                                                                                    
echo -e " Nginx             : Nginx Service is "$green"running"$NC""                
else                                                                                    
echo -e " Nginx             : Nginx Service is "$red"not running (Error)"$NC""      
fi
figlet -f slant Fsid Vpn | lolcat
exit
