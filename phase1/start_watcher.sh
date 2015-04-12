#!/bin/sh
. ./paths.sh
nohup python watcher.py > /dev/null 2> /dev/null < /dev/null &
