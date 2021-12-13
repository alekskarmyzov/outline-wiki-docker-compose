#!/bin/bash

#--server https://acme-staging-v02.api.letsencrypt.org/directory

certbot certonly -n \
  --agree-tos \
  --dns-route53 \
  --dns-route53-propagation-seconds 30 \
  -d $DOMAIN \
  -d *.$DOMAIN \
  -m  aliaksandr.karmyzau@leverx.com 