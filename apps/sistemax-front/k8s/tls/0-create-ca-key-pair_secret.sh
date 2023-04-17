#!/bin/sh

CA_CERTS_FOLDER=$(mkcert -CAROOT)

kubectl create secret tls ca-key-pair \
   --cert=$CA_CERTS_FOLDER/rootCA.pem \
   --key=$CA_CERTS_FOLDER/rootCA-key.pem \
   --namespace=cert-manager