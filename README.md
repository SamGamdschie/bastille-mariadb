# bastille-mariadb
BastilleBSD template for MariaDB at WerzelServer.
See [MariaBackup](https://mariadb.com/kb/en/mariabackup/) for detail about backup and restore.

### Arguments
This template can receive an argument: `mariadb-version` to specify another version for MariaDB.

#### Example
If you want MariaDB 10.1, you can use the template like this:

```sh
bastille template TARGET SamGamdschie/bastille-mariadb --arg mariadb-version=101
```

Note that the version must be available in FreeBSD packages (PKG).

### Manual Tasks
```sh
bastille console xxx
/usr/local/bin/mariadb-secure-installation
 /usr/local/bin/maria_restore.sh
```
