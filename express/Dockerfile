# --------------- BUILDER IMAGE

FROM node:20-alpine as builder

WORKDIR /app

COPY package.json .

# Uncomment if you use a different package manager
COPY package-lock.json . # npm
#COPY yarn.lock . # yarn
#COPY pnpm-lock.yaml . # pnpm

RUN npm ci # npm
#RUN yarn install # yarn
#RUN pnpm i # pnpm

COPY . .

# Run any additional comands you may want to here
# examples: db migration, build typescript, etc.

ENV PORT=5000
EXPOSE 5000

ENTRYPOINT [ "npm", "run", "start" ] # npm
#ENTRYPOINT [ "yarn", "start" ] # yarn
#ENTRYPOINT [ "pnpm", "run", "start" ] # pnpm
