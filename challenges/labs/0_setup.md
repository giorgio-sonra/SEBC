# Challenge Setup

Shellcripts Added in the Node 1 machine

## tn

Execute commands from t5 to t1
```
[centos@t1 ~]$ cat /usr/bin/tn
#!/bin/sh

if [ $# == 0 ]; then
  echo "Usage: $0 <command>"
  exit 1
fi

for i in {5..2};do ssh -tq t$i $@; done
eval $@;
```

## tx

Execute commands from t5 to t1 printing the hostname

```
[centos@t1 ~]$ cat /usr/bin/tx
#!/bin/sh

if [ $# == 0 ]; then
  echo "Usage: $0 <command>"
  exit 1
fi

for i in {5..2};do printf "t$i: "; ssh -tq t$i $@; done
printf "t1: "; eval $@;
```

## Uptime
```
[centos@t1 ~]$ tx sudo uptime
t5:  08:03:16 up 26 min,  1 user,  load average: 0.00, 0.01, 0.05
t4:  08:03:16 up 26 min,  1 user,  load average: 0.00, 0.01, 0.03
t3:  08:03:16 up 26 min,  1 user,  load average: 0.00, 0.01, 0.02
t2:  08:03:16 up 26 min,  1 user,  load average: 0.00, 0.01, 0.05
t1:  08:03:16 up 26 min,  1 user,  load average: 0.00, 0.01, 0.02
```

## List the cloud provider you are using (AWS, GCE, Azure, other)

AWS EC2 5 m3.xlarge machines 1x100GB magnectic disk each.

## List the nodes you are using by IP address and name
```
[centos@t1 ~]$ getent hosts
172.31.43.101   t1.cloudera.training.test t1
172.31.47.148   t2.cloudera.training.test t2
172.31.36.239   t3.cloudera.training.test t3
172.31.38.128   t4.cloudera.training.test t4
172.31.34.54    t5.cloudera.training.test t5
```

## List the Linux release you are using

```
[centos@t1 ~]$ tx cat /etc/redhat-release
t5: CentOS Linux release 7.2.1511 (Core)
t4: CentOS Linux release 7.2.1511 (Core)
t3: CentOS Linux release 7.2.1511 (Core)
t2: CentOS Linux release 7.2.1511 (Core)
t1: CentOS Linux release 7.2.1511 (Core)
```

## Demonstrate the disk capacity available on each node is >= 30 GB
```
[centos@t1 ~]$ tx "df -h | grep /dev/xvda1"
t5: /dev/xvda1      100G  944M  100G   1% /
t4: /dev/xvda1      100G  943M  100G   1% /
t3: /dev/xvda1      100G  943M  100G   1% /
t2: /dev/xvda1      100G  945M  100G   1% /
t1: /dev/xvda1      100G  941M  100G   1% /
```

## List the command and output for yum repolist enabled

```
[centos@t1 ~]$ yum repolist enabled
Loaded plugins: fastestmirror
Determining fastest mirrors
 * base: ftp.heanet.ie
 * extras: ftp.heanet.ie
 * updates: ftp.heanet.ie
repo id                             repo name                             status
!base/7/x86_64                      CentOS-7 - Base                       9,363
!extras/7/x86_64                    CentOS-7 - Extras                       311
!updates/7/x86_64                   CentOS-7 - Updates                    1,107
repolist: 10,781
```

## Add the following Linux accounts to all nodes
* User neymar with a UID of 2010
```
tn sudo groupadd -g 2010 neymar
tn sudo useradd -u 2010 -g 2010 neymar
```
* User ronaldo with a UID of 2016
```
tn sudo groupadd -g 2016 ronaldo
tn sudo useradd -u 2016 -g 2016 ronaldo
```
* Create the group barca and add ronaldo to it
```
tn sudo groupadd  barca
tn sudo usermod -a -G barca ronaldo
```
* Create the group merengues and add neymar to it
```
tn sudo groupadd  merengues
tn sudo usermod -a -G merengues neymar
```

## List the /etc/passwd entries for neymar and ronaldo

```
[centos@t1 ~]$ tx "egrep 'ronaldo|neymar' /etc/passwd"
t5: neymar:x:2010:2010::/home/neymar:/bin/bash
ronaldo:x:2016:2016::/home/ronaldo:/bin/bash
t4: neymar:x:2010:2010::/home/neymar:/bin/bash
ronaldo:x:2016:2016::/home/ronaldo:/bin/bash
t3: neymar:x:2010:2010::/home/neymar:/bin/bash
ronaldo:x:2016:2016::/home/ronaldo:/bin/bash
t2: neymar:x:2010:2010::/home/neymar:/bin/bash
ronaldo:x:2016:2016::/home/ronaldo:/bin/bash
t1: neymar:x:2010:2010::/home/neymar:/bin/bash
ronaldo:x:2016:2016::/home/ronaldo:/bin/bash
```

## List the /etc/group entries for barca and merengues

```
[centos@t1 ~]$ tx "egrep 'barca|merengues' /etc/group"
t5: barca:x:2017:ronaldo
merengues:x:2018:neymar
t4: barca:x:2017:ronaldo
merengues:x:2018:neymar
t3: barca:x:2017:ronaldo
merengues:x:2018:neymar
t2: barca:x:2017:ronaldo
merengues:x:2018:neymar
t1: barca:x:2017:ronaldo
merengues:x:2018:neymar
```
