# Feedback

I've got stuck on MariaDB 5.5 on centos 7.2.1511 procedure for long time.

The basic Installation executing the secure procedure made the root user impossible to access from remote machines.

```
[centos@t1 ~]$ mysql_secure_installation

Enter current password for root (enter for none):
Set root password? [Y/n] y
New password: cloudera
Re-enter new password: cloudera
Remove anonymous users? [Y/n] y
Disallow root login remotely? [Y/n] n
Remove test database and access to it? [Y/n] y
Reload privilege tables now? [Y/n] y
```

All tries with grants and server setup files where made.


I tried also to give a super user privileges to another one, but all of them were impossible to access the database outside

```
mysql -uroot -pcloudera -e "GRANT ALL PRIVILEGES ON root.* TO 'root'@'%' WITH GRANT OPTION;"

mysql -uroot -pcloudera -e "GRANT ALL PRIVILEGES ON scm.* TO 'scm'@'%' WITH GRANT OPTION;"

sudo vi /etc/my.cnf.d/server.cnf
# add bind-address = 0.0.0.0
```

The MariaDB was working locally, but all users were contining without access.

After talking with @mfernest with may tries done.

I resume to use the MariaDB 10.1 and them everything became working again.
