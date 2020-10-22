#!/bin/sh
cd /var/packages/EmbyServer/target/mono/bin
echo "添加信任证书..."
curl https://raw.githubusercontent.com/moshouhot/embyonekey/master/mb3admin.com.cert.pem >> /etc/ssl/certs/ca-certificates.crt
./cert-sync /etc/ssl/certs/ca-certificates.crt
cd /usr/local/etc/nginx/conf.d/*-*-*-*
wget https://raw.githubusercontent.com/moshouhot/embyonekey/master/user.conf
nginx -s reload

