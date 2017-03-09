# Sentry Test


## 1. Verify user privileges
```
$ beeline
beeline> !connect jdbc:hive2://n1:10000/default;principal=hive/n1.localdomain@GIORGIO.IO
Connecting to jdbc:hive2://n1:10000/default;principal=hive/n1.localdomain@GIORGIO.IO
Enter username for jdbc:hive2://n1:10000/default;principal=hive/n1.localdomain@GIORGIO.IO: giorgio-sonra
Enter password for jdbc:hive2://n1:10000/default;principal=hive/n1.localdomain@GIORGIO.IO: ********
Connected to: Apache Hive (version 1.1.0-cdh5.8.4)
Driver: Hive JDBC (version 1.1.0-cdh5.8.4)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://n1:10000/default> show tables;
INFO  : Compiling command(queryId=hive_20170309115656_d640bbe9-c77d-48d8-bd2e-c023c2222802): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170309115656_d640bbe9-c77d-48d8-bd2e-c023c2222802); Time taken: 0.578 seconds
INFO  : Executing command(queryId=hive_20170309115656_d640bbe9-c77d-48d8-bd2e-c023c2222802): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170309115656_d640bbe9-c77d-48d8-bd2e-c023c2222802); Time taken: 0.049 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| customers  |
| sample_07  |
| sample_08  |
| web_logs   |
+------------+--+
4 rows selected (1.984 seconds)
0: jdbc:hive2://n1:10000/default
```


## 2. kinit as george, then login to beeline

```
[centos@n1 ~]$ kinit george
Password for george@GIORGIO-SONRA.IO:
[centos@n1 ~]$ beeline
Beeline version 1.1.0-cdh5.8.4 by Apache Hive
beeline> !connect jdbc:hive2://n1:10000/default;principal=hive/n1.localdomain@GIORGIO.IO
scan complete in 3ms
Connecting to jdbc:hive2://n1:10000/default;principal=hive/n1.localdomain@GIORGIO.IO
Enter username for jdbc:hive2://n1:10000/default;principal=hive/n1.localdomain@GIORGIO.IO: george
Enter password for jdbc:hive2://n1:10000/default;principal=hive/n1.localdomain@GIORGIO.IO: ********
Connected to: Apache Hive (version 1.1.0-cdh5.8.4)
Driver: Hive JDBC (version 1.1.0-cdh5.8.4)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://n1:10000/default> show tables;
INFO  : Compiling command(queryId=hive_20170309124141_01d8f5c8-aee8-4b19-b715-3a37b5214600): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170309124141_01d8f5c8-aee8-4b19-b715-3a37b5214600); Time taken: 0.067 seconds
INFO  : Executing command(queryId=hive_20170309124141_01d8f5c8-aee8-4b19-b715-3a37b5214600): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170309124141_01d8f5c8-aee8-4b19-b715-3a37b5214600); Time taken: 0.135 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| customers  |
| sample_07  |
| sample_08  |
| web_logs   |
+------------+--+
4 rows selected (0.324 seconds)
0: jdbc:hive2://n1:10000/default> !quit
Closing: 0: jdbc:hive2://n1:10000/default;principal=hive/n1.localdomain@GIORGIO.IO
[centos@n1 ~]$ kinit ferdinand
Password for ferdinand@GIORGIO-SONRA.IO:
[centos@n1 ~]$ beeline
Beeline version 1.1.0-cdh5.8.4 by Apache Hive
beeline> !connect jdbc:hive2://n1:10000/default;principal=hive/n1.localdomain@GIORGIO.IO
scan complete in 2ms
Connecting to jdbc:hive2://n1:10000/default;principal=hive/n1.localdomain@GIORGIO.IO
Enter username for jdbc:hive2://n1:10000/default;principal=hive/n1.localdomain@GIORGIO.IO: ferdinand
Enter password for jdbc:hive2://n1:10000/default;principal=hive/n1.localdomain@GIORGIO.IO: ********
Connected to: Apache Hive (version 1.1.0-cdh5.8.4)
Driver: Hive JDBC (version 1.1.0-cdh5.8.4)
Transaction isolation: TRANSACTION_REPEATABLE_READ
0: jdbc:hive2://n1:10000/default> show tables;
INFO  : Compiling command(queryId=hive_20170309124343_a315ef80-2791-42f4-a730-848f3e75e405): show tables
INFO  : Semantic Analysis Completed
INFO  : Returning Hive schema: Schema(fieldSchemas:[FieldSchema(name:tab_name, type:string, comment:from deserializer)], properties:null)
INFO  : Completed compiling command(queryId=hive_20170309124343_a315ef80-2791-42f4-a730-848f3e75e405); Time taken: 0.087 seconds
INFO  : Executing command(queryId=hive_20170309124343_a315ef80-2791-42f4-a730-848f3e75e405): show tables
INFO  : Starting task [Stage-0:DDL] in serial mode
INFO  : Completed executing command(queryId=hive_20170309124343_a315ef80-2791-42f4-a730-848f3e75e405); Time taken: 0.161 seconds
INFO  : OK
+------------+--+
|  tab_name  |
+------------+--+
| sample_07  |
+------------+--+
1 row selected (0.376 seconds)
0: jdbc:hive2://n1:10000/default> ```
