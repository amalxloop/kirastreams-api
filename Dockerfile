FROM node:18-alpine

WORKDIR /app

ENV PORT=10000
ENV HOST=0.0.0.0
ENV NODE_ENV=production
ENV CACHE_TYPE=memory
ENV PUBLIC_URL=https://kirastreams-api.onrender.com

COPY package*.json ./
RUN npm install && npm cache clean --force

COPY . .

EXPOSE 10000

CMD ["npx", "tsx", "src/server.ts"]
