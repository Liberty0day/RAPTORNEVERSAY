#!/bin/bash

/usr/bin/expect -c '
spawn ssh kali@172.16.14.132
expect "kali"
send "kali\r"
interact
'