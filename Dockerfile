FROM php:7.4-cli

# Instalar dependencias
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libzip-dev \
    && docker-php-ext-install zip

# Instalar Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copiar archivos de la aplicación
COPY . /app

# Establecer el directorio de trabajo
WORKDIR /app

# Instalar dependencias de Composer
RUN composer install --no-dev --no-interaction --optimize-autoloader

# Exponer el puerto 8000
EXPOSE 8000

# Comando para iniciar la aplicación
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=8000"]
