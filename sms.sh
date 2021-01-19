#!/bin/bash
echo Sms Sender
echo Sms Server IP ; read var1
echo
echo Port ; read var2
echo
echo Number ; read var3
echo 
echo Message ; read var4
curl -X "POST" "http://$var1:$var2/v1/sms" -d "phone=$var3" -d "message=$var4"