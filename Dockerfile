FROM node:lts-buster
RUN git clone https://github.com/themaster5093/THE-MASTER-XMD/root/themaster5093 
WORKDIR /root/themaster5093 
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
