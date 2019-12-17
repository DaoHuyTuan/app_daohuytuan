FROM node:10-alpine
LABEL maintainer="nodeapp_daohuytuan"
WORKDIR /app_daohuytuan
COPY package.json ./
RUN npm install
COPY . ./
RUN npm run build
Run npm install -g serve
EXPOSE 7001
CMD ["serve", "-s", "build", "-l", "7001"]
