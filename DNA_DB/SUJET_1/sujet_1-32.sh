echo '
--] RPC  32

OPERATOR   === KALI               IP === 132
CHARLIE    === METASPLOITE 2      IP === 131
TANGO      === WIN 7              IP === 134
OSCAR      === WIN 10             IP === 133




OPERATOR    ==> TASK ==> sudo su << for to be root
OPERATOR    ==> TASK ==> nmap --script=smb-enum-users.nse -p445 IP_CHARLIE
OPERATOR    ==> TASK ==> rpcclient -U "" IP_CHARLIE
OPERATOR    ==> TASK ==> querydominfo
OPERATOR    ==> TASK ==> enumdomusers
OPERATOR    ==> TASK ==> queryuser msfadmin
OPERATOR    ==> TASK ==> enum4linux IP_OSCAR
OPERATOR    ==> TASK ==> enum4linux IP_CHARLIE
OPERATOR    ==> TASK ==> smbclient -L \\IP_CHARLIE
OPERATOR    ==> TASK ==> smbclient -L \\IP_OSCAR
OPERATOR    ==> TASK ==> smbclient //IP_CHARLIE/tmp
OPERATOR    ==> TASK ==> ?








'
read