#!/bin/bash
exec /usr/sbin/spamd --create-prefs --max-children 5 --helper-home-dir --pidfile=/var/run/spamd.pid
