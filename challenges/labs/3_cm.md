# Challenge 3 - Install CDH 5.9.x

```
sudo -u hdfs hdfs dfs -mkdir /user/neymar
sudo -u hdfs hdfs dfs -chown neymar /user/neymar
sudo -u hdfs hdfs dfs -mkdir /user/ronaldo
sudo -u hdfs hdfs dfs -chown ronaldo /user/ronaldo

```

```
[centos@t1 ~]$ hdfs dfs -ls /user
Found 6 items
drwxrwxrwx   - mapred  hadoop              0 2017-03-10 11:34 /user/history
drwxrwxr-t   - hive    hive                0 2017-03-10 11:35 /user/hive
drwxrwxr-x   - hue     hue                 0 2017-03-10 11:35 /user/hue
drwxr-xr-x   - neymar  supergroup          0 2017-03-10 11:38 /user/neymar
drwxrwxr-x   - oozie   oozie               0 2017-03-10 11:35 /user/oozie
drwxr-xr-x   - ronaldo supergroup          0 2017-03-10 11:38 /user/ronald
```


```
[centos@t1 ~]$ curl -u admin:admin -s http://t2:7180/api/v14/hosts
{
  "items" : [ {
    "hostId" : "a443b155-2cc9-49f4-8253-2181f877708a",
    "ipAddress" : "172.31.43.101",
    "hostname" : "t1.cloudera.training.test",
    "rackId" : "/default",
    "hostUrl" : "http://t2.cloudera.training.test:7180/cmf/hostRedirect/a443b155-2cc9-49f4-8253-2181f877708a",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332438016
  }, {
    "hostId" : "abff21e0-4fb4-402f-904d-2f04e47504e2",
    "ipAddress" : "172.31.47.148",
    "hostname" : "t2.cloudera.training.test",
    "rackId" : "/default",
    "hostUrl" : "http://t2.cloudera.training.test:7180/cmf/hostRedirect/abff21e0-4fb4-402f-904d-2f04e47504e2",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332438016
  }, {
    "hostId" : "95a12d5b-8bf1-43dd-9443-6776496e4a91",
    "ipAddress" : "172.31.36.239",
    "hostname" : "t3.cloudera.training.test",
    "rackId" : "/default",
    "hostUrl" : "http://t2.cloudera.training.test:7180/cmf/hostRedirect/95a12d5b-8bf1-43dd-9443-6776496e4a91",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332438016
  }, {
    "hostId" : "c92306a4-1f6e-4f82-a800-6b889f768398",
    "ipAddress" : "172.31.38.128",
    "hostname" : "t4.cloudera.training.test",
    "rackId" : "/default",
    "hostUrl" : "http://t2.cloudera.training.test:7180/cmf/hostRedirect/c92306a4-1f6e-4f82-a800-6b889f768398",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332438016
  }, {
    "hostId" : "df2f7388-4357-4efe-83e7-73fd7e964c51",
    "ipAddress" : "172.31.34.54",
    "hostname" : "t5.cloudera.training.test",
    "rackId" : "/default",
    "hostUrl" : "http://t2.cloudera.training.test:7180/cmf/hostRedirect/df2f7388-4357-4efe-83e7-73fd7e964c51",
    "maintenanceMode" : false,
    "maintenanceOwners" : [ ],
    "commissionState" : "COMMISSIONED",
    "numCores" : 4,
    "numPhysicalCores" : 2,
    "totalPhysMemBytes" : 15332438016
  } ]

```
