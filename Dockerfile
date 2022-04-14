FROM node:10
WORKDIR /usr/src/app
COPY . .
RUN npm install
RUN npm install sequelize-cli -g
RUN npx sequelize db:migrate
EXPOSE 5000
CMD ["npm", "run", "start"]
