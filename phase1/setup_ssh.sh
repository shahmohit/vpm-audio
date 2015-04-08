#!/bin/sh
echo "Press Enter when prompted for passphrase"
ssh-keygen -f tmp/sensor
ssh-keygen -f tmp/server
echo "Enter root as password"
ssh-copy-id -i tmp/sensor.pub  "root@localhost -p 2222"
cp tmp/sensor.pub $HOME/.ssh/
echo "Enter platypus as password"
ssh-copy-id -i tmp/server.pub  "mohit@localhost -p 2223"
cp tmp/server.pub $HOME/.ssh/
