#This document provides information about the digitalocean_availability.sh script, which is used for monitoring https://status.digitalocean.com/api/v2 
#Copy script digitalocean_availability.sh into /root directory. Afterwards edit crontab under user root with "crontab -e" command and add content of file "crontab".
#Script will automatically run every hour at 0 minutes and check if https://status.digitalocean.com/api/v2 is online. If not team@gmail.com will be notified.
