echo '
--] UDP SCANNING 22

OPERATOR   === KALI       IP === 132
TANGO      === WIN 7      IP === 134

OPERATOR    ==> INFO ==> client ==>> UDP         ==> Server
OPERATOR    ==> INFO ==> Server ==>> No response (opened port)     ==> Client   #slow scan is important

OPERATOR    ==> INFO ==> CLient ==>> UDP ==> Server
OPERATOR    ==> INFO ==> Server ==>> ICMP (Closed port) ==> Client

OPERATOR    ==> TASK ==> ping IP_TANGO
OPERATOR    ==> TASK ==> netdiscover -r 172.16.14.0/24
OPERATOR    ==> TASK ==> nmap -p 445 -sV IP_TANGO
'