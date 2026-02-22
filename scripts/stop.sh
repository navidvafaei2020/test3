#!/bin/bash
PID=$(pgrep -f test2-0.0.1-SNAPSHOT.jar)

if [ -z "$PID" ]
then
  echo "Application not running."
else
  echo "Stopping application..."
  kill -15 $PID
fi