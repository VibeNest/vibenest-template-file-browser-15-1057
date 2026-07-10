FROM filebrowser/filebrowser:latest

USER root
COPY entrypoint.sh /vibenest-entrypoint.sh
RUN chmod 0755 /vibenest-entrypoint.sh
USER user

ENTRYPOINT ["/vibenest-entrypoint.sh"]
