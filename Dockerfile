FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.g0rsbh3.mongodb.net
ENV MONGODB_USERNAME alpayunal
ENV MONGODB_PASSWORD password

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]