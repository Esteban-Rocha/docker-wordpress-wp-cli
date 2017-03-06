#
# Installs WordPress with wp-cli (wp.cli.org) installed
# Docker Hub: https://registry.hub.docker.com/u/conetix/wordpress-with-wp-cli/
# Github Repo: https://github.com/conetix/docker-wordpress-wp-cli

FROM wordpress:latest

# OhMyDocker Version
ENV OMDWP 1.0.1

ENV WORDPRESS_DB_USER="" \
  WORDPRESS_DB_PASSWORD="" \
  WORDPRESS_DB_NAME="" \
  WORDPRESS_DB_HOST="" \
  WORDPRESS_SITE_URL="" \
  WORDPRESS_PORT="" \
  WORDPRESS_ADMIN_EMAIL="" \
  WORDPRESS_ADMIN_USER="" \
  WORDPRESS_ADMIN_PASSWORD="" \
  WORDPRESS_TITLE="" \
  WORDPRESS_TAGLINE=""

# Add sudo in order to run wp-cli as the www-data user
RUN apt-get update && apt-get install -y sudo less

# Add WP-CLI
RUN curl -o /bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
COPY wp-su.sh /bin/wp
RUN chmod +x /bin/wp-cli.phar /bin/wp

# Cleanup
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
