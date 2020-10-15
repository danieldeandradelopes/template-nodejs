#!/bin/sh

arrAPIs=(api-auth api-aws api-backoffice api-cliente api-cron api-database api-payment api-prestador api-webhook live-fix)

_mydir="$(pwd)"

cd ..

for i in "${arrAPIs[@]}"; do 
    echo "cd ./$i"
    echo "git pull";
    echo "cd .."
done

cd $_mydir
