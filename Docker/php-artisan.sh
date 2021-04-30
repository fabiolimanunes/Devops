#!/bin/bash
 #service monitoring
 /bin/ps -aux | awk '{print $4}' | awk -F: '{print $4}' | grep bootstrap/artisan.php$ > /dev/null >/var/log/php-artisan.log
 a=$(echo $?)
 if test $a -ne 0

 then
 echo "named service down" | mail -s "DNS Service DOWN and restarted now" root@localhost
 /etc/init.d/named start > /dev/null 2>/dev/null
 else
 sleep 0
 fi
 Cron setup:
 */5 * * * * /root/uptime.sh > /dev/null 2>/dev/null