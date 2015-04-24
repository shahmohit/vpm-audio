#!/bin/sh
echo "Launcing Sensor..."
nohup ./launch_sensor.sh > tmp/sensor.log 2> tmp/sensor.err < /dev/null &
echo "Done."
echo "Launching Phone..."
nohup ./launch_phone.sh > tmp/phone.log 2> phone.err < /dev/null &
echo "Done."
echo "Launching Server..."
nohup ./launch_server.sh > tmp/server.log 2> server.err < /dev/null &
echo "Done."
echo "Launching Watcher Script..."
nohup ./start_watcher.sh > tmp/watcher.log 2> watcher.err < /dev/null &
echo "Done."

