#FROM ubuntu:16.04
FROM ubuntu:xenial
MAINTAINER Christian Riedl <riedlc@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install supervisor postfix rsyslog postgrey maildrop postfix-policyd-spf-perl postfix-mysql spamass-milter dovecot-imapd
RUN apt-get -y install vim net-tools

RUN mkdir -p /var/lib/spamass-milter; chown nobody.nogroup /var/lib/spamass-milter; usermod -d /var/lib/spamass-milter nobody

ADD usr/local/sbin /usr/local/sbin

EXPOSE 25/tcp 444/tcp 465/tcp 143/tcp 993/tcp

CMD run.sh
