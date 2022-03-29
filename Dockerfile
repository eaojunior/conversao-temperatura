FROM node:14.19.1-alpine3.15

LABEL "br.com.ejunior.temp-conversion"="API de Conversão de Temperaturas"
LABEL "maintainer"="eaojunior1@gmail.com"

WORKDIR /usr/src/app

COPY src/package*.json ./

RUN npm install

COPY src/ .

CMD [ "node", "server.js" ]