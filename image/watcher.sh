#!/bin/bash

nginx_watch () {
  while inotifywait -e modify -e create -e move -e delete /f2b_data/; do
      echo "Watcher: /f2b_data/banlist.txt changed, reloading (nginx -s reload) ..."
      nginx -s reload
  done
}

echo "finished"
nginx_watch
