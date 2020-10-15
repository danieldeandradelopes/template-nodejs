#!/bin/sh

arrAPIs=(api-auth api-aws api-backoffice api-cliente api-cron api-database api-payment api-prestador api-webhook)

_mydir="$(pwd)"

cd ..

for i in "${arrAPIs[@]}"; do 
    cd ./$i
    git add . && git commit -m "$1" && git push;
    cd ..
done

cd $_mydir
