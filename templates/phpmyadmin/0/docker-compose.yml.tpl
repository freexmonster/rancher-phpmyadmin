version: '2'

services:
  phpmyadmin:
    image: phpmyadmin/phpmyadmin:latest
    container_name: phpmyadmin
    ports:
      - '${WEB_PORT}:80'
    environment:
      {{- if ne .Values.PMA_HOSTS ""}}
      - PMA_HOSTS=${PMA_HOSTS}
      {{- end}}
      {{- if ne .Values.PMA_PORTS ""}}
      - PMA_PORT=${PMA_PORTS}
      {{- end}}
      {{- if ne .Values.PMA_USER ""}}
      - PMA_USER=${PMA_USER}
      {{- end}}
      {{- if ne .Values.PMA_PASSWORD ""}}
      - PMA_PASSWORD=${PMA_PASSWORD}
      {{- end}}
      {{- if eq .Values.PMA_ARBITRARY "true"}}
      - PMA_ARBITRARY=1
      {{- end}}
      {{- if ne .Values.PMA_VERBOSES ""}}
      - PMA_VERBOSES=${PMA_VERBOSES}
      {{- end}}
      {{- if ne .Values.PMA_ABSOLUTE_URI ""}}
      - PMA_ABSOLUTE_URI=${PMA_ABSOLUTE_URI}
      {{- end}}
    volumes:
      - /sessions
