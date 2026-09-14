FROM oven/bun:1

WORKDIR /usr/src/app

ARG DATABASE_URL
ENV DATABASE_URL=$DATABASE_URL

## Can you optimise this?
COPY . .

RUN bun install

RUN bun run generate:db

EXPOSE 8081

CMD ["bun", "start:ws"]