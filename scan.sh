#!/bin/bash

for i in 2 3 4 5 6 7 8 9 10
do
echo $i
sudo ifconfig en0 192.168.$i.55
nmap -sP 192.168.$i.0/24
done
