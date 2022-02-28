#!/usr/bin/env bash

source input.sh
export URL
export DISPLAY_NAME_SE
export DISPLAY_NAME_EN
export DESCRIPTION_SE
export DESCRIPTION_EN
export INFORMATION_URL
export PRIVACY_STATEMENT_URL_SE
export PRIVACY_STATEMENT_URL_EN
export ADMIN_NAME
export ADMIN_EMAIL

ID=$URL
export ID

if [[ ! -f "sp-key.pem" && ! -f "sp-cert.pem" ]]; then
    docker build -q -t sp-gen .
    docker run --rm -d -it --name sp-gen sp-gen
    docker exec sp-gen shib-keygen -h $ID
    docker cp sp-gen:/etc/shibboleth/sp-key.pem .
    docker cp sp-gen:/etc/shibboleth/sp-cert.pem .
    docker stop sp-gen
fi

CERT=$(sed '1d;$d'< sp-cert.pem)
export CERT

envsubst < template.xml
