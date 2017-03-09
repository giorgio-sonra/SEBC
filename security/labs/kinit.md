# kinit test


```
[giorgio-sonra@n1 ~]$ kinit giorgio-sonra

Password for giorgio-sonra@GIORGIO-SONRA.IO:

```

```
[giorgio-sonra@n1 ~]$ hdfs dfs -ls /user/giorgio-sonra
Found 8 items
drwx------   - giorgio-sonra supergroup          0 2017-03-08 00:00 /user/giorgio-sonra/.Trash
drwx------   - giorgio-sonra supergroup          0 2017-03-08 08:17 /user/giorgio-sonra/.staging
drwxrwxrwx   - giorgio-sonra supergroup          0 2017-03-08 14:50 /user/giorgio-sonra/2015_11_18
drwxrwxrwx   - giorgio-sonra supergroup          0 2017-03-08 14:50 /user/giorgio-sonra/2015_11_19
drwxrwxrwx   - giorgio-sonra supergroup          0 2017-03-08 14:50 /user/giorgio-sonra/2015_11_20
drwxrwxrwx   - giorgio-sonra supergroup          0 2017-03-08 14:50 /user/giorgio-sonra/2015_11_21
drwxr-xr-x   - giorgio-sonra supergroup          0 2017-03-07 14:48 /user/giorgio-sonra/precious
drwxr-xr-x   - giorgio-sonra supergroup          0 2017-03-07 13:00 /user/giorgio-sonra/teragen
```

```
[giorgio-sonra@n1 ~]$ klist
Ticket cache: FILE:/tmp/krb5cc_1001
Default principal: giorgio-sonra@GIORGIO-SONRA.IO

Valid starting       Expires              Service principal
03/08/2017 17:36:19  03/09/2017 17:36:19  krbtgt/GIORGIO-SONRA.IO@GIORGIO-SONRA.IO
	renew until 03/15/2017 17:36:19
```
