FROM node:23-alpine
MAINTAINER JC

RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN npm install && npm run build

EXPOSE 3000

CMD ["npm", "run", "host"]
