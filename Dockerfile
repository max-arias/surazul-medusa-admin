FROM node:lts

WORKDIR /app/medusa

COPY package.json .
COPY tsconfig.json .

RUN apt-get update

RUN npm install -g npm@latest

RUN yarn global add -g @medusajs/medusa-cli@latest

COPY . .

RUN yarn install

EXPOSE 9000
EXPOSE 7000
EXPOSE 7001

CMD [ "npm", "run", "dev" ]
