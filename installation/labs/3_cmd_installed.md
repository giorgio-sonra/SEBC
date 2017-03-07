# Cloudera Manager Installation

## 1. Repository

### 1.1. Download the repository

```
$ cd /etc/yum.repos.d/
$ sudo curl -O https://archive.cloudera.com/cm5/redhat/7/x86_64/cm/cloudera-manager.repo
$ cd
```

### 1.2. Change to CM 5.8.3

sudo sed -i "s|/cm/5/|/cm/5.8.3/|g" /etc/yum.repos.d/cloudera-manager.repo

## 2. Java
```
$ sudo yum install -y oracle-j2sdk1.7
Importing GPG key 0xE8F86ACD:
 Userid     : "Yum Maintainer <webmaster@cloudera.com>"
 Fingerprint: 5f14 d39e f068 1aca 6f04 4a43 f90c 0d8f e8f8 6acd
 From       : https://archive.cloudera.com/cm5/redhat/7/x86_64/cm/RPM-GPG-KEY-cloudera
Is this ok [y/N]: y
```

## 3. Cloudera Manager Server Packages

```
$ sudo yum install -y cloudera-manager-daemons cloudera-manager-server
```


## 4. Prepare the database
```
$ sudo /usr/share/cmf/schema/scm_prepare_database.sh -u root -p mysql scm scm scm_password
```

## 4. Start the Cloudera Manager Server

```
$ sudo service cloudera-scm-server start
```

```
$ sudo -u hdfs hdfs dfs -mkdir /user/centos
$ sudo -u hdfs hdfs dfs -chown centos /user/centos

```

## 4.1. IPs problems solved

```
sudo service cloudera-scm-agent next_stop_hard
sudo service cloudera-scm-agent stop

sudo vi /etc/cloudera-scm-agent/config.ini
server_host=n1.localdomain
listening_ip=<agent_ip>
listening_hostname=<agent_hostname>

sudo service cloudera-scm-server start```
