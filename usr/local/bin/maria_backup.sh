#!/bin/sh

rm -rf /var/backups/mariadb/

mariabackup --backup \
   --target-dir=/var/backups/mariadb/ \
   --user=mariabackup --password=mypassword