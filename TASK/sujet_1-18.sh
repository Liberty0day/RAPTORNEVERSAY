echo '
--] DNS ENUM 18

OPERATOR   === KALI       IP === 132

OPERATOR    ==> TASK ==> cat <<FCK >> list.txt
                            www
                            ftp
                            mail
                            owa
                            proxy
                            router
                            FCK


OPERATOR    ==> TASK ==> S=$(cat list.txt|wc -l |awk '{print $1}') ;E=0;while (($E <= $S ));do host $(cat list.txt|wc -l |awk '{print $1}' | awk 'NR==$E').megacorpone.com ;((E++));done
OPERATOR    ==> TASK ==> for ip in $(cat list.txt); do host $ip.megacorpone.com;done

'