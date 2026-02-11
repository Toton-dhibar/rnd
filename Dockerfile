FROM denoland/deno:alpine-1.44.0

WORKDIR /app

COPY . .

RUN deno cache server.ts

CMD ["deno", "run", "-A", "server.ts"]
