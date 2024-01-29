#!/bin/bash
for f in /etc/profile.d/*.sh ;
do
  echo "sourcing ${f}"
  . $f;
done

/app/vector/bin/vector -c /app/vector-conf/vector.yaml
