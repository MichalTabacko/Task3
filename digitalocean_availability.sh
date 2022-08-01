#!/usr/bin/bash

SKIT_ALERT_EMAIL="https://status.digitalocean.com/api/v2"
StatusLOG="/home/admin/status.log"

send(){ # DigitalOcean Satus
    toemail="team@gmail.com"
    fromemail="digitalocean_availability@gmail.com"
    smtpserver="smtp.gmail.com"
    port=587
    username="digitalocean_availability@gmail.com"
    passw="Start123"
    sendemail -f "$fromemail" -t "$toemail" -u "$1" -m "$2" -s \
    "$smtpserver:$port" -xu "$username" -xp "$passw" -o tls=yes -q
}


wget --server-response --spider $SKIT_ALERT_EMAIL
    if [ $? -ne 0 ]
    then
     echo "$url is down | `date`" >> `echo "$StatusLOG"`
     send "$url is not available" "DOWN | `date`"
    fi
