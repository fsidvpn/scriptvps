#!/bin/bash

#Install SHC
apt-get install build-essential -y
wget -q -c https://github.com/neurobin/shc/archive/4.0.2.tar.gz
tar xzvf 4.0.2.tar.gz > /dev/null
cd shc-4.0.2/
./configure > /dev/null
make
make install > /dev/null


#Masuk Direktori
cd 
cd /usr/bin/

#Encrypt File
shc -r -f addhost 
shc -r -f addl2tp
shc -r -f addpptp
shc -r -f addss
shc -r -f addssh
shc -r -f addssr
shc -r -f addsstp
shc -r -f addtrojan
shc -r -f addtrgo
shc -r -f addvless
shc -r -f addwgr
shc -r -f addvmess
shc -r -f autobackup
shc -r -f autokill
shc -r -f backup
shc -r -f cekpptp
shc -r -f cekss
shc -r -f cekssh
shc -r -f ceksstp
shc -r -f cektrojan
shc -r -f cekvless
shc -r -f cekwg
shc -r -f cekvmess
shc -r -f certv2ray
shc -r -f changeport
shc -r -f dell2tp
shc -r -f delpptp
shc -r -f delss
shc -r -f delssh
shc -r -f delssr
shc -r -f delsstp
shc -r -f deltrojan
shc -r -f delvless
shc -r -f delwg
shc -r -f delv2ray
shc -r -f delete
shc -r -f info
shc -r -f izin
shc -r -f ceklim
shc -r -f sstpp
shc -r -f ssh
shc -r -f trojaan
shc -r -f v2raay
shc -r -f wgr
shc -r -f l2tp
shc -r -f member
shc -r -f reboot
shc -r -f renewl2tp
shc -r -f renewpptp
shc -r -f renewss
shc -r -f renewssh
shc -r -f renewssr
shc -r -f ssssr
shc -r -f renewsstp
shc -r -f renewtrojan
shc -r -f renewvless
shc -r -f renewwg
shc -r -f renewvmess
shc -r -f restart
shc -r -f restore
shc -r -f strt
shc -r -f menu
shc -r -f swapkvm
shc -r -f addtrgo
shc -r -f tendang
shc -r -f trialssh
shc -r -f xp



#Move file
mv addhost.x addhost
mv addl2tp.x addl2tp
mv addpptp.x addpptp
mv addss.x addss
mv ssssr.x ssssr
mv addssh.x addssh
mv addssr.x addssr
mv addsstp.x addsstp
mv addtrojan.x addtrojan
mv addtrgo.x addtrgo
mv addvless.x addvless
mv addwgr.x addwgr
mv addvmess.x addvmess
mv autobackup.x autobackup
mv autokill.x autokill
mv backup.x backup
mv cekpptp.x cekpptp
mv cekss.x cekss
mv sstpp.x sstpp
mv cekssh.x cekssh
mv ceksstp.x ceksstp
mv cektrojan.x cektrojan
mv cektrgo.x cektrgo
mv cekvless.x cekvless
mv cekwg.x cekwg
mv cekvmess.x cekvmess
mv certv2ray.x certv2ray
mv changeport.x changeport
mv dell2tp.x dell2tp
mv delpptp.x delpptp
mv delss.x delss
mv delssh.x delssh
mv delssr.x delssr
mv delsstp.x delsstp
mv deltrojan.x deltrojan
mv delvless.x delvless
mv delwgr.x delwgr
mv delvmess.x delvmess
mv delete.x delete
mv info.x info
mv ceklim.x ceklim
mv ssh.x ssh
mv trojaan.x trojaan
mv v2raay.x v2raay
mv wgr.x wgr
mv l2tp.x l2tp
mv member.x member
mv reboot.x reboot
mv renewl2tp.x renewl2tp
mv renewpptp.x renewpptp
mv renewss.x renewss
mv renewssh.x renewssh
mv renewssr.x renewssr
mv renewsstp.x renewsstp
mv renewtrojan.x renewtrojan
mv renewtrgo.x renewtrgo
mv renewvless.x renewvless
mv renewwgr.x renewwgr
mv renewvmess.x renewvmess
mv restart.x restart
mv restore.x restore
mv strt.x strt
mv swapkvm.x swapkvm
mv tendang.x tendang
mv trialssh.x trialssh
mv xp.x xp

#Remove Extension
rm -r -f *.x.c
clear
echo -e "Installation Script Susuccessful..." | lolcat 
rm -r -f encrypt
cd
rm -rf shc-4.0.2
rm -rf 4.0.2.tar.gz
rm -rf master.zip
rm -rf encrypt.sh
