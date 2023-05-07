#!/bin/sh

useradd webuser

mode=$1
project_id=$2

if [ "$mode" = "local" ]; then
    echo "Building environment $mode..."
    echo "Project $project_id"

    echo "authorityKeyIdentifier=keyid,issuer" > /certs/domains.ext
    echo "basicConstraints=CA:FALSE" >> /certs/domains.ext
    echo "keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment" >> /certs/domains.ext
    echo "subjectAltName = @alt_names" >> /certs/domains.ext
    echo "[alt_names]" >> /certs/domains.ext
    echo "DNS.1 = localhost" >> /certs/domains.ext
    echo "DNS.2 = local.es" >> /certs/domains.ext
    echo "DNS.3 = *.local.es" >> /certs/domains.ext
    openssl req -new -nodes -newkey rsa:2048 -keyout /certs/local.es.key -out /certs/local.es.csr -subj "/C=ES/ST=ALBACETE/L=ALBACETE/O=AJ/CN=local.es"
    openssl x509 -req -sha256 -days 1024 -in /certs/local.es.csr -CA /certs/certificate.pem -CAkey /certs/private.key -CAcreateserial -extfile /certs/domains.ext -out /certs/local.es.crt
fi