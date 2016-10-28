FROM ubuntu:16.04
MAINTAINER Christian Riedl <riedlc@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install supervisor postfix rsyslog postgrey maildrop postfix-policyd-spf-perl postfix-mysql spamass-milter dovecot-imapd
RUN apt-get -y install vim net-tools

ADD usr/local/sbin /usr/local/sbin

EXPOSE 25/tcp 444/tcp 465/tcp 143/tcp 993/tcp

CMD run.sh
