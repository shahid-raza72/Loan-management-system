FROM node:10
workdir C:\app
copy package*.json ./app
RUN npm install 
copy . .
cmd node app.js
expose 3000