FROM filebrowser/filebrowser:latest

COPY --chmod=0755 entrypoint.sh /vibenest-entrypoint.sh

ENTRYPOINT ["/vibenest-entrypoint.sh"]
