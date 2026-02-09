# ---------- BUILD STAGE ----------
FROM node:18-bullseye AS builder

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build


# ---------- RUNTIME STAGE ----------
FROM node:18-bullseye

WORKDIR /app
COPY --from=builder /app ./

RUN npm prune --production

EXPOSE 1337
CMD ["npm", "run", "start"]

