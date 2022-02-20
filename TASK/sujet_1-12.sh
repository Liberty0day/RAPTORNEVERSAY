echo '
--] NETWORK SNIFFING 12

OPERATOR   === KALI         IP === 132

OPERATOR    ==> TASK ==> wireshark
OPERATOR    ==> TASK ==> ping 8.8.8.8
OPERATOR    ==> TASK ==> wireshark ==> http
OPERATOR    ==> TASK ==> wireshark ==> tcp.stream eq 0
OPERATOR    ==> TASK ==> wireshark ==> dns
OPERATOR    ==> TASK ==> wireshark ==> ip.src==IP_OPERATOR
OPERATOR    ==> TASK ==> wireshark ==> ip.dst==IP_OPERATOR
'
read
clear
