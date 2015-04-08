#!/bin/sh
echo "Press Enter when prompted for passphrase"
ssh-keygen -f tmp/sensor
ssh-keygen -f tmp/server
echo "Enter root as password"
ssh-copy-id -i tmp/sensor.pub -p 2222 root@localhost
echo "Enter platypus as password"
ssh-copy-id -i tmp/server.pub -p 2223 mohit@localhost
