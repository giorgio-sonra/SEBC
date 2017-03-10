# Challenge 2: Install Cloudera Manager 5.9.x

## Install Cloudera Manager on the second node listed in

`t2.cloudera.training.test`


### moving session
```
[centos@t1 ~]$ ssh t2
[centos@t2 ~]$
```

## repository

### download latest repo

```
curl -L -O https://archive.cloudera.com/cm5/redhat/7/x86_64/cm/cloudera-manager.repo

sudo mv -f cloudera-manager.repo /etc/yum.repos.d/
```
### moving to 5.9.x

```
sudo sed -i "s|/cm/5/|/cm/5.9/|g" /etc/yum.repos.d/cloudera-manager.repo

sudo yum clean all
```

##  Configure Cloudera Manager


## Cloudera JDK

* Install scm server

```
sudo yum install -y oracle-j2sdk1.7 cloudera-manager-daemons cloudera-manager-server
```

* Use the `scm_prepare_database.sh` script to write your `db.properties` file

```
[centos@t1 ~]$ mysql -uroot -pcloudera -e "grant all on scm.* TO 'scm'@'t2.cloudera.training.test'"
```

```
sudo /usr/share/cmf/schema/scm_prepare_database.sh -h t1.cloudera.training.test -u scm -p mysql scm scm scm_password
```

## CM start

```
sudo service cloudera-scm-server start
``
