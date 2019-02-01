FROM node:8.15.0-alpine

WORKDIR /root/

COPY . .

RUN npm install

CMD ["npm", "start", "--", "--port=8080"]
