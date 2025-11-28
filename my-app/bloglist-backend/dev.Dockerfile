FROM node:20

WORKDIR /usr/src/app

COPY --chown=node:node . .

RUN npm install

USER node

ENV PORT=3003

EXPOSE 3003

CMD ["npm", "run", "dev", "--", "--host"]