FROM node:alpine3.21

WORKDIR /app

COPY . .

#RUN npm install

EXPOSE 8001

CMD ["node", "app.js"]
