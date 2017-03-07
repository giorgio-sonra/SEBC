# Pre-Installation

>FROM n1


```
$ uname -a
Linux n1.localdomain 3.10.0-327.10.1.el7.x86_64 #1 SMP Tue Feb 16 17:03:50 UTC 2016 x86_64 x86_64 x86_64 GNU/Linux


$ cat /etc/redhat-release
CentOS Linux release 7.2.1511 (Core)
```

---
## 1. Check vm.swappiness on all your nodes

### 1.1. disabling swap, temporary
```
$ sudo sysctl vm.swappiness=1
```

### 1.2. checking swap, temporary
```
$ sysctl vm.swappiness
vm.swappiness = 1
```

### 1.3. disabling swap, permanent
```
$ echo "vm.swappiness=1" | sudo tee -a /etc/sysctl.conf
```

### 1.3. checking swap, permanent
```
$ cat /etc/sysctl.conf
vm.swappiness=1
```


## 2. Check vm.swappiness on all your nodes

### 2.1. mount points
```
$ cat /etc/fstab
UUID=ef6ba050-6cdc-416a-9380-c14304d0d206 /                       xfs     defaults        0 0
```

### 2.2. mounted partitions
```
$ df -h
Filesystem      Size  Used Avail Use% Mounted on
/dev/xvda1      100G  880M  100G   1% /
devtmpfs        7.3G     0  7.3G   0% /dev
tmpfs           7.2G     0  7.2G   0% /dev/shm
tmpfs           7.2G   17M  7.2G   1% /run
tmpfs           7.2G     0  7.2G   0% /sys/fs/cgroup
tmpfs           1.5G     0  1.5G   0% /run/user/1000
```

### 3.1. Show the reserve space of any non-root, ext-based volumes

>R: XSF based, no reserved space


## 4. Disable transparent hugepage support

### 4.1. temporary
```
$ echo never | sudo tee /sys/kernel/mm/transparent_hugepage/defrag
$ echo never | sudo tee /sys/kernel/mm/transparent_hugepage/enabled
```

### 4.2. checking temporary

```
$ cat /sys/kernel/mm/transparent_hugepage/defrag
always madvise [never]
$ cat /sys/kernel/mm/transparent_hugepage/enabled
always madvise [never]
```

### 4.3. permanent

```
$ echo "echo never > /sys/kernel/mm/transparent_hugepage/defrag" | sudo tee -a /etc/rc.local
$ echo "echo never > /sys/kernel/mm/transparent_hugepage/enabled" | sudo tee -a /etc/rc.local
```

### 4.4. checking permanent
```
$ cat /etc/rc.local
touch /var/lock/subsys/local
echo never > /sys/kernel/mm/transparent_hugepage/defrag
echo never > /sys/kernel/mm/transparent_hugepage/enabled
```


## 5. List your network interface configuration

```
$ ip addr
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
    inet6 ::1/128 scope host
       valid_lft forever preferred_lft forever
2: eth0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 9001 qdisc pfifo_fast state UP qlen 1000
    link/ether 06:f6:bb:16:eb:95 brd ff:ff:ff:ff:ff:ff
    inet 172.31.39.128/20 brd 172.31.47.255 scope global dynamic eth0
       valid_lft 2216sec preferred_lft 2216sec
    inet6 fe80::4f6:bbff:fe16:eb95/64 scope link
       valid_lft forever preferred_lft forever
```

## 6. List forward and reverse host lookups using getent or nslookup

```
$ getent networks
default               0.0.0.0
loopback              127.0.0.0
link-local            169.254.0.0
```
```
$ getent hosts
172.31.39.128   n1.localdomain n1
127.0.0.1       localhost.localdomain localhost localhost4 localhost4.localdomain4
127.0.0.1       localhost.localdomain localhost localhost4 localhost4.localdomain4
172.31.34.172   n2.localdomain n2
172.31.34.53    n3.localdomain n3
172.31.41.226   n4.localdomain n4
172.31.33.149   n5.localdomain n5
```



## 7. Show the nscd service is running

## 7.1 install
```
$ sudo yum install -y nscd
$ sudo systemctl enable nscd.service
$ sudo systemctl start nscd.service
```

## 7.2. running

```
$ sudo systemctl status nscd.service
● nscd.service - Name Service Cache Daemon
   Loaded: loaded (/usr/lib/systemd/system/nscd.service; enabled; vendor preset: disabled)
   Active: active (running) since Mon 2017-03-06 15:21:31 UTC; 7s ago
  Process: 10121 ExecStart=/usr/sbin/nscd $NSCD_OPTIONS (code=exited, status=0/SUCCESS)
 Main PID: 10122 (nscd)
   CGroup: /system.slice/nscd.service
           └─10122 /usr/sbin/nscd

Mar 06 15:21:31 n1.localdomain nscd[10122]: 10122 monitoring directory `/et...)
Mar 06 15:21:31 n1.localdomain nscd[10122]: 10122 monitoring file `/etc/hos...)
Mar 06 15:21:31 n1.localdomain nscd[10122]: 10122 monitoring directory `/et...)
Mar 06 15:21:31 n1.localdomain nscd[10122]: 10122 monitoring file `/etc/res...)
Mar 06 15:21:31 n1.localdomain nscd[10122]: 10122 monitoring directory `/et...)
Mar 06 15:21:31 n1.localdomain nscd[10122]: 10122 monitoring file `/etc/ser...)
Mar 06 15:21:31 n1.localdomain nscd[10122]: 10122 monitoring directory `/et...)
Mar 06 15:21:31 n1.localdomain nscd[10122]: 10122 disabled inotify-based mo...y
Mar 06 15:21:31 n1.localdomain nscd[10122]: 10122 stat failed for file `/et...y
Mar 06 15:21:31 n1.localdomain systemd[1]: Started Name Service Cache Daemon.
Hint: Some lines were ellipsized, use -l to show in full.
```


## 8. Show the ntpd service is running

### 8.1. install/config
```
$ sudo yum install -y ntp
$ echo "server 0.pool.ntp.org" | sudo tee -a /etc/ntp.conf
$ echo "server 1.pool.ntp.org" | sudo tee -a /etc/ntp.conf
$ echo "server 2.pool.ntp.org" | sudo tee -a /etc/ntp.conf

```

### 8.2. check config

```
$ cat /etc/ntp.conf
...
server 0.pool.ntp.org
server 1.pool.ntp.org
server 2.pool.ntp.org
```


### 8.3. enable

```
$ sudo systemctl enable ntpd.service
$ sudo systemctl start ntpd.service
$ sudo ntpdate -u pool.ntp.org
$ sudo hwclock --systohc
```

### 8.4. check

```
$ sudo systemctl status ntpd.service
● ntpd.service - Network Time Service
  Loaded: loaded (/usr/lib/systemd/system/ntpd.service; enabled; vendor preset: disabled)
  Active: active (running) since Mon 2017-03-06 15:33:01 UTC; 2min 59s ago
 Process: 10233 ExecStart=/usr/sbin/ntpd -u ntp:ntp $OPTIONS (code=exited, status=0/SUCCESS)
Main PID: 10234 (ntpd)
  CGroup: /system.slice/ntpd.service
          └─10234 /usr/sbin/ntpd -u ntp:ntp -g

Mar 06 15:33:01 n1.localdomain ntpd[10234]: Listen normally on 2 lo 127.0.0...3
Mar 06 15:33:01 n1.localdomain ntpd[10234]: Listen normally on 3 eth0 172.3...3
Mar 06 15:33:01 n1.localdomain ntpd[10234]: Listen normally on 4 lo ::1 UDP 123
Mar 06 15:33:01 n1.localdomain ntpd[10234]: Listen normally on 5 eth0 fe80:...3
Mar 06 15:33:01 n1.localdomain ntpd[10234]: Listening on routing socket on ...s
Mar 06 15:33:01 n1.localdomain systemd[1]: Started Network Time Service.
Mar 06 15:33:02 n1.localdomain ntpd[10234]: 0.0.0.0 c016 06 restart
Mar 06 15:33:02 n1.localdomain ntpd[10234]: 0.0.0.0 c012 02 freq_set kernel...M
Mar 06 15:33:02 n1.localdomain ntpd[10234]: 0.0.0.0 c011 01 freq_not_set
Mar 06 15:33:08 n1.localdomain ntpd[10234]: 0.0.0.0 c614 04 freq_mode
Hint: Some lines were ellipsized, use -l to show in full.

```
