# docker build -t myapp:alpine .
FROM php:8.1-cli-alpine

WORKDIR /app
# Contoh instal satu ekstensi; tambah sesuai kebutuhan
RUN docker-php-ext-install pdo_mysql

COPY . .

EXPOSE 8080
CMD ["php", "-S", "0.0.0.0:8080", "-t", "src"]
