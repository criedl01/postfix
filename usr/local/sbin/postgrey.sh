#!/bin/bash
chown -R postgrey.postgrey /var/lib/postgrey
exec /usr/sbin/postgrey --inet=10023
