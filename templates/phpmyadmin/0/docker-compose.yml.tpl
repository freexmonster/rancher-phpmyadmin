version: '2'

services:
  phpmyadmin:
    image: phpmyadmin/phpmyadmin:latest
    container_name: phpmyadmin
    ports:
      - '${WEB_PORT}':80
    environment:
      - PMA_HOST='${PMA_HOST}'
      - PMA_USER='${PMA_USER}'
      - PMA_PASSWORD='${PMA_PASSWORD}'
    volumes:
      - /sessions
