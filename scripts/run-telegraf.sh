#!/bin/bash
for f in /etc/profile.d/*.sh ;
do
  echo "sourcing ${f}"
  . $f;
done

/app/telegraf/usr/bin/telegraf --config-directory /app/telegraf-conf
