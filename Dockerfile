FROM node:16.0.0-alpine3.13
WORKDIR /app/
COPY . .
CMD echo "{\"port\":6969,\"secret\":\"$SECRET\"}" > config.json && node mtproxy.js
