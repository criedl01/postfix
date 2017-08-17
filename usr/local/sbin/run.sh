#!/bin/sh

#maildomain=localhost.localdomain

cat > /etc/supervisor/conf.d/supervisord.conf <<EOF
[supervisord]
nodaemon= true

[program:postfix]
command=/usr/local/sbin/postfix.sh

[program:rsyslogd]
command=/usr/sbin/rsyslogd -n

[program:postgrey]
command=/usr/local/sbin/postgrey.sh

[program:spamd]
command=/usr/local/sbin/spamassassin.sh

[program:spamass-milter]
command=/usr/local/sbin/spamass-milter.sh

[program:dovecot]
command=/usr/local/sbin/dovecot.sh

[program:cron]
command=/usr/sbin/cron -f

EOF

mkdir -p /var/log/supervisor
exec /usr/bin/supervisord -c /etc/supervisor/supervisord.conf
