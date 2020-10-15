#!/bin/sh

arrAPIs=(api-auth api-aws api-backoffice api-cliente api-cron api-database api-payment api-prestador api-webhook)

_mydir="$(pwd)"

cd ..

for i in "${arrAPIs[@]}"; do 
    cd ./$i
    echo "Requiring npm dependencies in ${i}";
    echo "npm require ${1} --save";
    cd ..
done

cd $_mydir
