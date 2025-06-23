# Etapa de build
FROM node:20-alpine AS build-stage
WORKDIR /app

# Copiar apenas o necessário primeiro para aproveitar cache
COPY package*.json ./
RUN npm install

# Agora copia todo o resto
COPY . .
RUN npm run build

# Etapa de produção
FROM nginx:alpine
COPY --from=build-stage /app/dist /usr/share/nginx/html
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
