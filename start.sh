#!/bin/bash

#get script dir
DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [[ ! -f "${DIR}/.env" ]]; then
    echo "No .env file, copying env-example"
    cp "${DIR}/env-example" "${DIR}/.env"
fi

docker-compose up -d nginx php-fpm workspace mysql

echo
echo "Run 'docker-compose exec workspace bash' to enter workspace"