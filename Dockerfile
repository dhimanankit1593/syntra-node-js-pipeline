FROM node:alpine3.21

WORKDIR /jenkins-app

COPY . .

#RUN npm install

EXPOSE 8002

CMD ["node", "app.js"]
