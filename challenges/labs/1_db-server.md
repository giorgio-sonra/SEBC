# Challenge 1: Install a MySQL server


## Install a MariaDB 5.5 server

```
sudo yum install -q -y MariaDB-server
sudo yum reinstall -q -y MariaDB-server
```

## Install the appropriate DB client
```
tn sudo yum install -q -y MariaDB-client
```

## Install the appropriate Jdbc DB client

```
curl -L -O https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.41.tar.gz

tar zxvf mysql-connector-java-5.1.41.tar.gz

tn sudo mkdir -p /usr/share/java

to mysql-connector-java-5.1.41/mysql-connector-java-5.1.41-bin.jar

cp mysql-connector-java-5.1.41/mysql-connector-java-5.1.41-bin.jar .

tn sudo cp mysql-connector-java-5.1.41-bin.jar /usr/share/java/mysql-connector-java.jar

```


## Start the database service

```
sudo systemctl enable mysql.service
sudo systemctl start mysql.service
```

## secure installation

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

## Record the following

* The hostname of your db server node

 `t1.cloudera.training.test`

* The command and output for display your database server's version
```
[centos@t1 ~]$ mysql -uroot -pcloudera -e "SELECT VERSION();"
+----------------+
| VERSION()      |
+----------------+
| 5.5.54-MariaDB |
+----------------+
```

* The command and output for listing your created databases. Create the following databases
 * scm
```
mysql -uroot -pcloudera -e "create database scm DEFAULT CHARACTER SET utf8;
grant all on scm.* TO 'scm'@'%' IDENTIFIED BY 'scm_password';"
```
 * rman
```
mysql -uroot -pcloudera -e "create database rman DEFAULT CHARACTER SET utf8;
grant all on rman.* TO 'rman'@'%' IDENTIFIED BY 'rman_password';"
```
 * hive
```
mysql -uroot -pcloudera -e "create database metastore DEFAULT CHARACTER SET utf8;
grant all on metastore.* TO 'hive'@'%' IDENTIFIED BY 'hive_password';"
```
 * oozie
```
mysql -uroot -pcloudera -e "create database oozie DEFAULT CHARACTER SET utf8;
grant all on oozie.* TO 'oozie'@'%' IDENTIFIED BY 'oozie_password';"
```
 * hue
```
mysql -uroot -pcloudera -e "create database hue DEFAULT CHARACTER SET utf8;
grant all on hue.* TO 'hue'@'%' IDENTIFIED BY 'hue_password';"
```
 * sentry
```
mysql -uroot -pcloudera -e "create database sentry DEFAULT CHARACTER SET utf8;
grant all on sentry.* TO 'sentry'@'%' IDENTIFIED BY 'sentry_password';"
```

## Fixes
GRANT ALL PRIVILEGES ON *.* TO 'scm'@'%' WITH GRANT OPTION;


```
mysql -uroot -pcloudera -e "GRANT ALL PRIVILEGES ON root.* TO 'root'@'%' WITH GRANT OPTION;"

mysql -uroot -pcloudera -e "GRANT ALL PRIVILEGES ON scm.* TO 'scm'@'%' WITH GRANT OPTION;"

sudo vi /etc/my.cnf.d/server.cnf
# add bind-address = 0.0.0.0
```
