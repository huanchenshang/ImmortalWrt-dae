#!/bin/sh

if ! grep -q "/bin/v2ray-geodata-updater" /etc/crontabs/root; then
  echo "0 7 * * * /bin/v2ray-geodata-updater" >> /etc/crontabs/root
  crontab /etc/crontabs/root
fi
