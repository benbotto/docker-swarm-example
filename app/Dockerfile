FROM node:dubnium-alpine

WORKDIR /var/node

COPY ["./", "./"]

RUN npm install --only=production \
  && npm run build

USER node

EXPOSE 8080

CMD ["npm", "run", "start:prod"]
