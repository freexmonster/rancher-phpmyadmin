version: '2'

services:
  phpmyadmin:
    image: phpmyadmin/phpmyadmin:latest
    container_name: phpmyadmin
    ports:
      - '${WEB_PORT}:80'
    environment:
      - PMA_HOSTS='${PMA_HOSTS}'
      - PMA_PORT='${PMA_PORT}'
      - PMA_USER='${PMA_USER}'
      - PMA_PASSWORD='${PMA_PASSWORD}'
      {{- if eq .Values.PMA_ARBITRARY "true"}}
      - PMA_ARBITRARY=1
      {{- end}}
      - PMA_VERBOSES='${PMA_VERBOSES}'
      - PMA_ABSOLUTE_URI='${PMA_ABSOLUTE_URI}'
    volumes:
      - /sessions
