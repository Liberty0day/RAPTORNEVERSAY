echo '
--] BIND SHELL 11

OPERATOR   === KALI         IP === 132
TANGO      === WINDOWS 10    IP === 133

TANGO       ==> TASK ==> cmd.exe
TANGO       ==> TASK ==> nc.exe -nlvp 4444 > test.txt
OPERATOR    ==> TASK ==> cd /usr/share/windows-binaries
OPERATOR    ==> TASK ==> echo "Your data test" > test.txt
OPERATOR    ==> TASK ==> nc -nv -w 3 IP_TANGO 4444 < file.txt
INFO        ==> TASK ==> in windows equivalent of cat is type.
'
read
clear
