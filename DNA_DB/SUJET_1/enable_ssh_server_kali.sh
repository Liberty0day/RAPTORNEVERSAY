echo '
--] ENABLE SSH SERVER KALI 00

OPERATOR   === KALI               IP === 132
CHARLIE    === METASPLOITE 2      IP === 131
TANGO      === WIN 7              IP === 134
OSCAR      === WIN 10             IP === 133
GHOST      === YOUR LOCAL MACHINE IP === 000



OPERATOR    ==> TASK ==> sudo su << for to be root
OPERATOR    ==> TASK ==> service --status-all |grep ssh
OPERATOR    ==> TASK ==> apt-get install openssh-server
OPERATOR    ==> TASK ==> service ssh start
OPERATOR    ==> TASK ==> service --status-all
GHOST       ==> TASK ==> ssh kali@IP_OPERATOR


'
read