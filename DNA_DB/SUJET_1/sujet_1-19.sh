echo '
--] DNS REVERSE LOOKUP BRUT FORCE 19

OPERATOR   === KALI       IP === 132

OPERATOR    ==> TASK ==> for ip in $(seq 155 190); do host 50.7.67.$ip;done | grep -v "not found"
OPERATOR    ==> TASK ==> for ip in {155..190}; do host 50.7.67.$ip;done | grep -v "not found"

'