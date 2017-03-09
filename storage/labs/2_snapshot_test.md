# Snapshot Test

## 1. New Directory/File to test
```
$ sudo -u giorgio-sonra hdfs dfs -mkdir precious

$ sudo -u giorgio-sonra hdfs dfs -put /home/giorgio-sonra/SEBC.zip precious/

```

## 2. Enabled snapshot
```
$ sudo -u hdfs hdfs dfsadmin -allowSnapshot /user/giorgio-sonra/precious
```


## 3. create snapshot
```
$ sudo -u giorgio-sonra hdfs dfs -createSnapshot precious sebc-hdfs-test
> Created snapshot /user/giorgio-sonra/precious/.snapshot/sebc-hdfs-test
```

## 4. File deleted
```
$ sudo -u giorgio-sonra hdfs dfs -rm precious/SEBC.zip
17/03/07 14:21:17 INFO fs.TrashPolicyDefault: Moved: 'hdfs://n2.localdomain:8020/user/giorgio-sonra/precious/SEBC.zip' to trash at: hdfs://n2.localdomain:8020/user/giorgio-sonra/.Trash/Current/user/giorgio-sonra/precious/SEBC.zip
```

## 5. List snapshots

```
$ sudo -u giorgio-sonra hdfs lsSnapshottableDir

 drwxr-xr-x 0 giorgio-sonra supergroup 0 2017-03-07 14:21 1 65536 /user/giorgio-sonra/precious
```

## 6. Restore file

```
$ sudo -u giorgio-sonra hdfs dfs -ls -R /user/giorgio-sonra/precious/.snapshot
 drwxr-xr-x   - giorgio-sonra supergroup          0 2017-03-07 14:06 /user/giorgio-sonra/precious/.snapshot/sebc-hdfs-test
 -rw-r--r--   3 giorgio-sonra supergroup     415069 2017-03-07 14:05 /user/giorgio-sonra/precious/.snapshot/sebc-hdfs-test/SEBC.zip

$ sudo -u giorgio-sonra hdfs dfs -cp precious/.snapshot/sebc-hdfs-test/SEBC.zip precious/

```
