FROM node:dubnium-alpine

WORKDIR /var/node

COPY ["./app.js", "./"]
COPY ["./package.json", "./"]

RUN npm install --only=production

USER node

EXPOSE 3000

CMD ["npm", "start"]
