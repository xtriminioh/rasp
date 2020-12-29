#!/bin/bash
$(sudo mount /dev/sda /mnt/storage/)
$(docker-compose -f /home/pi/docker-compose.yml restart)

TOKEN="1394204437:AAHqxVnAGmy3J60iVEg3yHBLRJUqrbiB5kY"
ID="932643580"
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
MESSAGE="IP: $(echo $(hostname -I) | awk '{print $1}')"> /dev/null 2>&1
curl -s -X POST $URL -d chat_id=$ID -d text="$MESSAGE" 
