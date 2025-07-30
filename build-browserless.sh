#!/bin/bash
CAROOT="$(mkcert -CAROOT)"
# kopieer rootCA naar browserless map zodat we die kunnen gebruiken in de dockerfile
cp "$CAROOT/rootCA.pem" ./browserless
docker-compose build browserless