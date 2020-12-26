#!/bin/bash
$(sudo mount /dev/sda /mnt/storage/)
$(docker-compose -f /home/pi/docker-compose.yml restart)
