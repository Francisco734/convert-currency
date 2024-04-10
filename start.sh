#!/bin/bash

echo "*************"
echo "*** Start ***"
echo "*************"

# Inicializar el back
cp backend/convert-currency-api/.env.example backend/convert-currency-api/.env
docker exec convert-currency-api composer install
docker exec convert-currency-api php artisan key:generate
docker exec convert-currency-api php artisan migrate:fresh --seed
echo "*** Backend is ready ***"