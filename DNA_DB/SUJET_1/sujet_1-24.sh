echo '
--] NMAP NSE 24

OPERATOR   === KALI               IP === 132
CHARLIE    === METASPLOITE 2      IP === 131
TANGO      === WIN 7              IP === 134

OPERATOR    ==> TASK ==> cd /usr/share/nmap/scripts/
OPERATOR    ==> TASK ==> ls smb
OPERATOR    ==> TASK ==> nmap --script=smb-vuln-ms17-10.nse IP_TANGO
OPERATOR    ==> TASK ==> nmap --script=ftp-vsftpd-backdoor.nse IP_CHARLIE
'
read