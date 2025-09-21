#!/bin/bash

WEB_SERVER="localhost"
PORT="80"
ROOT_DIR="/var/www/html"
INDEX_FILE="index.html"

#Check webserver port
if ! nc -z -w 2 "$WEB_SERVER" "$PORT" >/dev/null 2>&1; then
    echo "Port $PORT on webserver $WEB_SERVER not available"
    exit 1
fi

#Check web-file index.html
if [ ! -f "$ROOT_DIR/$INDEX_FILE" ]; then
    echo "File $ROOT_DIR/$INDEX_FILE not available"
    exit 1
fi

echo "Web-Server work prefectly"
exit 0
