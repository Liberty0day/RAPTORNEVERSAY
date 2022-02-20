echo '
--] BIND SHELL 10

OPERATOR   === KALI         IP === 132
TANGO      === WINDOWS 7    IP === 134

TANGO       ==> TASK ==> cmd.exe
TANGO       ==> TASK ==> nc.exe -nlvp 4444 > file.txt
OPERATOR    ==> TASK ==> echo "Your data" > file.txt
OPERATOR    ==> TASK ==> nc -nv -w 3 IP_TANGO 4444 < file.txt

'
read
clear
