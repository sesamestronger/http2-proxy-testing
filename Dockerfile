FROM node:14 as builder
WORKDIR /usr/app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM node:14
WORKDIR /usr/app
COPY package*.json ./
RUN npm ci --production

COPY --from=builder /usr/app/dist ./dist

ENV PORT 3000
EXPOSE 3000
CMD npm start
