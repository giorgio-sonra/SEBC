# Challenge 1: Install a MySQL server - Repository

## new repo

```
[centos@t1 ~]$ echo "
[mariadb]
name = MariaDB
baseurl = http://yum.mariadb.org/5.5/centos7-amd64
gpgkey=https://yum.mariadb.org/RPM-GPG-KEY-MariaDB
gpgcheck=1
" | sudo tee /etc/yum.repos.d/mariadb.repo
```

# copying
```
[centos@t1 ~]$ to /etc/yum.repos.d/mariadb.repo
mariadb.repo                                  100%  140     0.1KB/s   00:00    
mariadb.repo                                  100%  140     0.1KB/s   00:00    
mariadb.repo                                  100%  140     0.1KB/s   00:00    
mariadb.repo

[centos@t1 ~]$ tn sudo mv -f ~/mariadb.repo /etc/yum.repos.d/
```

# refresh

```
[centos@t1 ~]$ tn sudo yum clean all

```

# check

```
[centos@t1 ~]$ tn yum repolist enabled|grep mariadb
mariadb                             MariaDB                                  12
mariadb                             MariaDB                                  12
mariadb                             MariaDB                                  12
mariadb                             MariaDB                                  12
mariadb   ```
