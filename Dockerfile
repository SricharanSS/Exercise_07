FROM node:18-alpine
WORKDIR /app
COPY package.json package-lock.json /app
RUN npm ci --omit=dev
COPY ./build dist
ENV PORT=8080
EXPOSE $PORT

ENTRYPOINT ["npm", "run", "start"]
