#!/bin/bash
mkdir -p /var/run/spamass
chown spamass-milter /var/run/spamass
mkdir -p /var/spool/postfix/spamass
chown spamass-milter /var/spool/postfix/spamass
{ sleep 2; chown postfix:postfix /var/spool/postfix/spamass/spamass.sock; chmod 0660 /var/spool/postfix/spamass/spamass.sock; } &
exec /usr/sbin/spamass-milter -P /var/run/spamass/spamass.pid -p /var/spool/postfix/spamass/spamass.sock -u spamass-milter -r 5 -i 127.0.0.1
