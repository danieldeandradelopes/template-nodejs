#!/bin/sh

arrAPIs=(api-auth api-aws api-backoffice api-cliente api-cron api-database api-payment api-prestador api-webhook live-fix)

_mydir="$(pwd)"

cd ..

for i in "${arrAPIs[@]}"; do 
    cp ./$i/environment/.env.dev ./$i/.env
done


cd $_mydir