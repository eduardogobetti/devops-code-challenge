from node:alpine

WORKDIR /applications/app

COPY app/* ./
RUN npm install

EXPOSE 3000

CMD [ "npm", "start" ]