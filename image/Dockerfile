FROM nginx

RUN apt-get update && apt-get install -y inotify-tools

COPY watcher.sh /watcher.sh
COPY watcher-entrypoint.sh /watcher-entrypoint.sh

RUN chmod +x /watcher.sh
RUN chmod +x /watcher-entrypoint.sh

ENTRYPOINT ["/watcher-entrypoint.sh"]
