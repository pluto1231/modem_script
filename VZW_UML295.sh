#!/bin/sh

# For Verizon UML 295 modem
# This script creates cache files /tmp/post_response.txt and /tmp/post_response2.txt

while true
do
  # 192.168.32.2 is Verizon modem's IP for web interface
  wget -T 30 -q http://192.168.32.2/condata -O /tmp/post_response.txt
  connect_status=`cat /tmp/post_response.txt | grep "disconnect" | wc -c`
  if [ "$connect_status" == "0" ]
  then
    wget -T 30 -q http://192.168.32.2/condata?action=connect -O /tmp/post_response2.txt
  fi
  sleep 60
done
