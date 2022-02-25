echo '
--] ADVANCE SCAN 25

OPERATOR   === KALI               IP === 132
CHARLIE    === METASPLOITE 2      IP === 131
TANGO      === WIN 7              IP === 134

OPERATOR    ==> INFO ==> MTU ==>> Maximum Transmission Unit
OPERATOR    ==> INFO ==> Decoys ==>> Generate fake ip ? YES BRO
OPERATOR    ==> TASK ==> nmap --mtu 8 IP_TANGO
OPERATOR    ==> TASK ==> wireshark ==> ip.dst==IP_TANGO
OPERATOR    ==> TASK ==> nmap --mtu 16 IP_TANGO
OPERATOR    ==> TASK ==> wireshark ==> ip.dst==IP_TANGO

OPERATOR    ==> TASK ==> nmap -D RND:10 IP_TANGO
OPERATOR    ==> TASK ==> nmap -D 172.16.14.33,172.16.14.44,172.16.14.66 IP_TANGO
OPERATOR    ==> TASK ==> nmap --source-port 53 IP_TANGO

OPERATOR    ==> TASK ==> nmap --data-length 25 IP_TANGO
OPERATOR    ==> TASK ==> nmap --randomize-hosts IP_TANGO --scan-delay 13s << slow is very important because if you are fast FW detect you




'
read