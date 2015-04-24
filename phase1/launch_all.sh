#!/bin/sh
echo "Launcing Sensor..."
nohup ./launch_sensor.sh > /dev/null < /dev/null &
echo "Done."
echo "Launching Phone..."
nohup ./launch_phone.sh > /dev/null < /dev/null &
echo "Done."
echo "Launching Server..."
nohup ./launch_server.sh > /dev/null < /dev/null &
echo "Done."
echo "Launching Watcher Script..."
nohup ./start_watcher.sh > /dev/null < /dev/null &
echo "Done."

