###################################################################
# Dockerfile to build apache-php container images for ROB5 Linux 2#
# Based on tutum/apache-php					  #
###################################################################

# set the base image to tutum/apache-php
FROM tutum/apache-php

# File Author / Maintainer
MAINTAINER William Bergmann Borresen "william@borresen.one"

# Copy the php files to the server image
COPY insert.php /var/www/html
COPY select.php /var/www/html
