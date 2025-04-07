#!/bin/bash

echo "Run Watchere"
/watcher.sh &

echo "Run Entrypoint"
/docker-entrypoint.sh "nginx" "-g" "daemon off;"
