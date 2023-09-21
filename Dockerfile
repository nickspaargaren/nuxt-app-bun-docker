FROM oven/bun:1.0

WORKDIR /nuxt

COPY --chown=bun:bun package.json bun.lockb ./

RUN bun install

COPY --chown=bun:bun . .

EXPOSE 3000
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

CMD ["bun", "run", "dev"]