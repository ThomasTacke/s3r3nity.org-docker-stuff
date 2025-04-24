#!/bin/bash
mkdir -p mail-cert
sudo chmod 777 mail-cert
cd /opt/s3r3nity.org-docker-stuff
sudo rm -rf mail-cert/*
sudo cp traefik/letsencrypt/acme.json mail-cert/ && sudo chown kiwi:kiwi mail-cert -R && sudo chmod 755 mail-cert/acme.json
docker run --rm -v /opt/s3r3nity.org-docker-stuff/mail-cert:/input -v /opt/s3r3nity.org-docker-stuff/mail-cert:/output --workdir /output ghcr.io/na4ma4/traefik-acme:latest --acme /input/acme.json -r letsencrypt mail.s3r3nity.org
sudo cp mail-cert/key.pem poste.io/data/ssl/server.key && sudo cp mail-cert/cert.pem poste.io/data/ssl/server.crt && sudo cp mail-cert/cert.pem poste.io/data/ssl/ca.crt
docker compose restart poste.io
