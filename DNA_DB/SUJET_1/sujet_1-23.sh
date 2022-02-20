echo '
--] UDP SCANNING 23

OPERATOR   === KALI       IP === 132
TANGO      === METASPLOITE 2      IP === 131

OPERATOR    ==> TASK ==> nmap -sn 172.16.14.1-254
OPERATOR    ==> TASK ==> nmap -p 1-65535 -sV IP_TANGO
OPERATOR    ==> TASK ==> nmap -p 139,445,21,23 IP_TANGO
OPERATOR    ==> TASK ==> nmap -A IP_TANGO
'