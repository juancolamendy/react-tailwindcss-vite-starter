FROM mhart/alpine-node:16
MAINTAINER JC

RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN npm install && npm run build

EXPOSE 3000

CMD ["npm", "run", "host"]
