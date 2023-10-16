FROM node:18

RUN mkdir -p /app

WORKDIR /app

COPY ./vite_fast /app/vite_fast

COPY ./entrypoint.sh /app/entrypoint.sh

RUN apt-get update -qq

RUN chmod +x /app/entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]

