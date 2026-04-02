FROM node:22-alpine
WORKDIR /app
COPY package.json ./
RUN npm install --production
RUN nonexistent-command-xyz --this-will-fail
COPY . .
EXPOSE 3000
CMD ["node", "server.mjs"]
