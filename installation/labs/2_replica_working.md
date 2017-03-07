# Maria DB HA Enabled Setup
* n1 active
* n2 replica

## 1. Download and implement the official MariaDB repo

## 1.1. Enable the repo to install MariaDB
> n1 to n5

```
$ sudo vi /etc/yum.repos.d/MariaDB.repo
[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/10.1/centos7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1
```

### 1.2. Install the mysql package on all nodes
> n1 to n5

```
$ sudo yum install -y MariaDB-client
$ ssh -t n2 sudo yum install -y MariaDB-client
```

### 1.3. Install mysql-server on the server and replica nodes
> n1 and n2
```
$ sudo yum install -y MariaDB-server
$ ssh -t n2 sudo yum install -y MariaDB-server
```


### 1.4. Download and copy the JDBC connector to all nodes.
> n1 to n5

```
$ wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.41.tar.gz
$ tar zxvf mysql-connector-java-5.1.41.tar.gz
$ sudo mkdir /usr/share/java
$ sudo cp mysql-connector-java-5.1.41/mysql-connector-java-5.1.41-bin.jar /usr/share/java/mysql-connector-java.jar
```

## 2. You should not need to build a /etc/my.cnf file to start your MySQL server
> n1 and n2

```
$ sudo vi /etc/my.cnf.d/repl-server.cnf

[mysqld]
transaction-isolation = READ-COMMITTED

key_buffer = 16M
key_buffer_size = 32M
max_allowed_packet = 32M
thread_stack = 256K
thread_cache_size = 64
query_cache_limit = 8M
query_cache_size = 64M
query_cache_type = 1

max_connections = 500
expire_logs_days = 10

log_bin=/var/lib/mysql/mysql_binary_log

binlog_format = row

read_buffer_size = 2M
read_rnd_buffer_size = 16M
sort_buffer_size = 8M
join_buffer_size = 8M

innodb_file_per_table = 1
innodb_flush_log_at_trx_commit  = 2
innodb_log_buffer_size = 64M
innodb_buffer_pool_size = 4G
innodb_thread_concurrency = 8
innodb_flush_method = O_DIRECT
innodb_log_file_size = 512M

```


## 3. Start the mysqld service.
> n1 and n2

```
$ sudo systemctl enable mariadb.service
$ sudo systemctl start mariadb.service
$ ssh -t n2 sudo systemctl enable mariadb.service
$ ssh -t n2 sudo systemctl start mariadb.service

```

## 4. Use /usr/bin/mysql_secure_installation to:
* a. Set password protection for the server
* b. Revoke permissions for anonymous users
* c. Permit remote privileged login
* d. Remove test databases
* e. Refresh privileges in memory
* f. Refreshes the mysqld service

> n1 and n2
```
$ sudo mysql_secure_installation

Enter current password for root (enter for none):
Set root password? [Y/n] y
New password:
Re-enter new password:
Remove anonymous users? [Y/n] y
Disallow root login remotely? [Y/n] n
Remove test database and access to it? [Y/n] y
Reload privilege tables now? [Y/n] y
```

## 5. On the master MySQL node, grant replication privileges for your replica node:
## 6. In a second terminal session, log into the MySQL master and show its status:
> n1 (master)

```
$ sudo vi /etc/my.cnf.d/repl-server.cnf

# ...
# Galera Provider Configuration
wsrep_on=ON
wsrep_provider=/usr/lib64/galera/libgalera_smm.so

# Galera Cluster Configuration
wsrep_cluster_name="mariadb-cluster"
wsrep_cluster_address="gcomm://"

# Galera Synchronization Congifuration
wsrep_sst_method=rsync

# Galera Node Configuration
wsrep_node_address="172.31.39.128"
wsrep_node_name="n1"
```

## 7. Login to the replica server and configure a connection to the master:

> n2 (second)

```
$ ssh -t n2 sudo vi /etc/my.cnf.d/repl-server.cnf

# ...
# Galera Provider Configuration
wsrep_on=ON
wsrep_provider=/usr/lib64/galera/libgalera_smm.so

# Galera Cluster Configuration
wsrep_cluster_name="mariadb-cluster"
wsrep_cluster_address="gcomm://172.31.39.128"

# Galera Synchronization Congifuration
wsrep_sst_method=rsync

# Galera Node Configuration
wsrep_node_address="172.31.34.172"
wsrep_node_name="n2"
```

## 8. Initiate slave operations on the replica

```
sudo systemctl restart mariadb.service
ssh -t n2 sudo systemctl restart mariadb.service
```


### 8.1 checking

```
$ mysql -u root -p -e "SHOW GLOBAL STATUS LIKE 'wsrep_%';"


+------------------------------+---------------------------------------+
| Variable_name                | Value                                 |
+------------------------------+---------------------------------------+
| wsrep_apply_oooe             | 0.000000                              |
| wsrep_apply_oool             | 0.000000                              |
| wsrep_apply_window           | 0.000000                              |
| wsrep_causal_reads           | 0                                     |
| wsrep_cert_deps_distance     | 0.000000                              |
| wsrep_cert_index_size        | 0                                     |
| wsrep_cert_interval          | 0.000000                              |
| wsrep_cluster_conf_id        | 2                                     |
| wsrep_cluster_size           | 2                                     |
| wsrep_cluster_state_uuid     | 2da5f58a-02b0-11e7-921b-320eed4fbd43  |
| wsrep_cluster_status         | Primary                               |
| wsrep_commit_oooe            | 0.000000                              |
| wsrep_commit_oool            | 0.000000                              |
| wsrep_commit_window          | 0.000000                              |
| wsrep_connected              | ON                                    |
| wsrep_desync_count           | 0                                     |
| wsrep_evs_delayed            |                                       |
| wsrep_evs_evict_list         |                                       |
| wsrep_evs_repl_latency       | 0/0/0/0/0                             |
| wsrep_evs_state              | OPERATIONAL                           |
| wsrep_flow_control_paused    | 0.000000                              |
| wsrep_flow_control_paused_ns | 0                                     |
| wsrep_flow_control_recv      | 0                                     |
| wsrep_flow_control_sent      | 0                                     |
| wsrep_gcomm_uuid             | dfb84a03-02b7-11e7-8e05-2fee641464ef  |
| wsrep_incoming_addresses     | 172.31.39.128:3306,172.31.34.172:3306 |
| wsrep_last_committed         | 0                                     |
| wsrep_local_bf_aborts        | 0                                     |
| wsrep_local_cached_downto    | 18446744073709551615                  |
| wsrep_local_cert_failures    | 0                                     |
| wsrep_local_commits          | 0                                     |
| wsrep_local_index            | 0                                     |
| wsrep_local_recv_queue       | 0                                     |
| wsrep_local_recv_queue_avg   | 0.333333                              |
| wsrep_local_recv_queue_max   | 2                                     |
| wsrep_local_recv_queue_min   | 0                                     |
| wsrep_local_replays          | 0                                     |
| wsrep_local_send_queue       | 0                                     |
| wsrep_local_send_queue_avg   | 0.000000                              |
| wsrep_local_send_queue_max   | 1                                     |
| wsrep_local_send_queue_min   | 0                                     |
| wsrep_local_state            | 4                                     |
| wsrep_local_state_comment    | Synced                                |
| wsrep_local_state_uuid       | 2da5f58a-02b0-11e7-921b-320eed4fbd43  |
| wsrep_protocol_version       | 7                                     |
| wsrep_provider_name          | Galera                                |
| wsrep_provider_vendor        | Codership Oy <info@codership.com>     |
| wsrep_provider_version       | 25.3.19(r3667)                        |
| wsrep_ready                  | ON                                    |
| wsrep_received               | 3                                     |
| wsrep_received_bytes         | 337                                   |
| wsrep_repl_data_bytes        | 0                                     |
| wsrep_repl_keys              | 0                                     |
| wsrep_repl_keys_bytes        | 0                                     |
| wsrep_repl_other_bytes       | 0                                     |
| wsrep_replicated             | 0                                     |
| wsrep_replicated_bytes       | 0                                     |
| wsrep_thread_count           | 2                                     |
+------------------------------+---------------------------------------+
```


### 8.1 CDH databases

> n1

```
$ mysql -u root -p
```
### 8.1.1. Activity Monitor

```sql
create database amon DEFAULT CHARACTER SET utf8;
grant all on amon.* TO 'amon'@'%' IDENTIFIED BY 'amon_password';
```

### 8.1.2. Reports Manager
```sql
create database rman DEFAULT CHARACTER SET utf8;
grant all on rman.* TO 'rman'@'%' IDENTIFIED BY 'rman_password';
```

### 8.1.3. Hive Metastore Server
```sql
create database metastore DEFAULT CHARACTER SET utf8;
grant all on metastore.* TO 'hive'@'%' IDENTIFIED BY 'hive_password';
```

### 8.1.4. Sentry Server
```sql
create database sentry DEFAULT CHARACTER SET utf8;
grant all on sentry.* TO 'sentry'@'%' IDENTIFIED BY 'sentry_password';
```

### 8.1.5. Cloudera Navigator Audit Server
```sql
create database nav DEFAULT CHARACTER SET utf8;
grant all on nav.* TO 'nav'@'%' IDENTIFIED BY 'nav_password';
```

### 8.1.6. Cloudera Navigator Metadata Server
```sql
create database navms DEFAULT CHARACTER SET utf8;
grant all on navms.* TO 'navms'@'%' IDENTIFIED BY 'navms_password';
```

### 8.1.7. Hue Server

```sql
create database hue DEFAULT CHARACTER SET utf8;
grant all on hue.* TO 'hue'@'%' IDENTIFIED BY 'hue_password';
```

### 8.1.8. Oozie

```sql
create database oozie DEFAULT CHARACTER SET utf8;
grant all on oozie.* TO 'oozie'@'%' IDENTIFIED BY 'oozie_password';
```
