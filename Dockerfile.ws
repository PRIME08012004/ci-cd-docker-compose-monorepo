FROM oven/bun:1

WORKDIR /usr/src/app

COPY package.json bun.lock ./

RUN bun install --frozen-lockfile

COPY . .

RUN bun run generate:db

EXPOSE 8081

CMD ["bun", "start:ws"]