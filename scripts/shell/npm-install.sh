#!/bin/sh

arrAPIs=(api-auth api-aws api-backoffice api-cliente api-cron api-database api-payment api-prestador api-webhook)

_mydir="$(pwd)"

cd ..

for i in "${arrAPIs[@]}"; do 
    cd ./$i
    echo "Installing npm dependencies in ${i}";
    npm i;
    cd ..
done

cd $_mydir
