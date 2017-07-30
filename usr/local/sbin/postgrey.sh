#!/bin/bash
chown -R postgrey.postgrey /var/lib/postgrey
exec /usr/sbin/postgrey --inet=127.0.0.1:10023
