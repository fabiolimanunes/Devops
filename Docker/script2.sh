 #!/bin/bash
service=bootstrap/artisan.php
if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
echo "$service is running!!!"
else
/usr/local/start
fi