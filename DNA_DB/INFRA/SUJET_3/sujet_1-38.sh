echo '
--] METERPRETER 37

OPERATOR   === KALI               IP === 132
CHARLIE    === METASPLOITE 2      IP === 131
TANGO      === WIN 7              IP === 134
OSCAR      === WIN 10             IP === 133
LAB        === NET                ALL === 172.16.14.IP


OPERATOR    ==> TASK ==> sudo su << for to be root
OPERATOR    ==> TASK ==> netdicover -r 172.16.14.0/24
OPERATOR    ==> TASK ==> nmap -sV IP_CHARLIE



'
read