#!/bin/bash

rm -f /var/run/dovecot/master.pid
/usr/sbin/dovecot -Fc /etc/dovecot/dovecot.conf
