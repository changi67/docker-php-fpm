FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get install -y php5-fpm php5-ldap php5-mysql php5-gd php5-mcrypt graphviz
RUN apt-get clean

# Add image configuration and scripts
ADD run.sh /run.sh
RUN chmod u+x /run.sh

# Add php5-fpm specific configuration
ADD www.conf /etc/php5/fpm/pool.d/www.conf

COPY docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

expose 9001
CMD ["/run.sh"]
