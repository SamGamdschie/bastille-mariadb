# bastille-mariadb
BastilleBSD template for MariaDB at WerzelServer.
See [MariaBackup](https://mariadb.com/kb/en/mariabackup/) for detail about backup and restore.

## Arguments
This template can receive an argument: `mariadb-version` to specify another version for MariaDB.

### Example
If you want MariaDB 10.1, you can use the template like this:

```sh
bastille template TARGET SamGamdschie/bastille-mariadb --arg mariadb-version=101
```

Note that the version must be available in FreeBSD packages (PKG).

## Manual Tasks
### Secure Installation
```sh
bastille console db
/usr/local/bin/mariadb-secure-installation
service mysql-server restart
```
Note: The restart will also enable the SSL/TLS from config!

### Restore
Restore backup from old sever (if given)
```sh
bastille console db
/usr/local/bin/maria_restore.sh
```
