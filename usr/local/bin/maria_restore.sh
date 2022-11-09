#!/bin/sh
mariabackup --prepare \
   --target-dir=/var/backups/mariadb/ 

mariabackup --copy-back \
   --target-dir=/var/backups/mariadb/ 