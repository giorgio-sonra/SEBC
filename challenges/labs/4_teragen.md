
# Challenge 4 - HDFS Testing - Teragen


```time hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Ddfs.blocksize=16777216 65536000 /user/neymar/tgen640
```

```
[neymar@t1 ~]$ time hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Ddfs.blocksize=16777216 65536000 /user/neymar/tgen640
17/03/10 11:48:12 INFO client.RMProxy: Connecting to ResourceManager at t1.cloudera.training.test/172.31.43.101:8032
17/03/10 11:48:12 INFO terasort.TeraSort: Generating 65536000 using 2
17/03/10 11:48:12 INFO mapreduce.JobSubmitter: number of splits:2
17/03/10 11:48:13 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_1489145659996_0001
17/03/10 11:48:13 INFO impl.YarnClientImpl: Submitted application application_1489145659996_0001
17/03/10 11:48:13 INFO mapreduce.Job: The url to track the job: http://t1.cloudera.training.test:8088/proxy/application_1489145659996_0001/
17/03/10 11:48:13 INFO mapreduce.Job: Running job: job_1489145659996_0001
17/03/10 11:48:19 INFO mapreduce.Job: Job job_1489145659996_0001 running in uber mode : false
17/03/10 11:48:19 INFO mapreduce.Job:  map 0% reduce 0%
17/03/10 11:48:33 INFO mapreduce.Job:  map 9% reduce 0%
17/03/10 11:48:36 INFO mapreduce.Job:  map 15% reduce 0%
17/03/10 11:48:39 INFO mapreduce.Job:  map 20% reduce 0%
17/03/10 11:48:42 INFO mapreduce.Job:  map 24% reduce 0%
17/03/10 11:48:45 INFO mapreduce.Job:  map 28% reduce 0%
17/03/10 11:48:48 INFO mapreduce.Job:  map 32% reduce 0%
17/03/10 11:48:51 INFO mapreduce.Job:  map 36% reduce 0%
17/03/10 11:48:54 INFO mapreduce.Job:  map 40% reduce 0%
17/03/10 11:48:57 INFO mapreduce.Job:  map 43% reduce 0%
17/03/10 11:49:00 INFO mapreduce.Job:  map 44% reduce 0%
17/03/10 11:49:03 INFO mapreduce.Job:  map 47% reduce 0%
17/03/10 11:49:06 INFO mapreduce.Job:  map 51% reduce 0%
17/03/10 11:49:09 INFO mapreduce.Job:  map 54% reduce 0%
17/03/10 11:49:16 INFO mapreduce.Job:  map 59% reduce 0%
17/03/10 11:49:19 INFO mapreduce.Job:  map 63% reduce 0%
17/03/10 11:49:22 INFO mapreduce.Job:  map 67% reduce 0%
17/03/10 11:49:25 INFO mapreduce.Job:  map 71% reduce 0%
17/03/10 11:49:28 INFO mapreduce.Job:  map 75% reduce 0%
17/03/10 11:49:31 INFO mapreduce.Job:  map 77% reduce 0%
17/03/10 11:49:34 INFO mapreduce.Job:  map 78% reduce 0%
17/03/10 11:49:37 INFO mapreduce.Job:  map 79% reduce 0%
17/03/10 11:49:40 INFO mapreduce.Job:  map 81% reduce 0%
17/03/10 11:49:43 INFO mapreduce.Job:  map 82% reduce 0%
17/03/10 11:49:46 INFO mapreduce.Job:  map 84% reduce 0%
17/03/10 11:49:49 INFO mapreduce.Job:  map 85% reduce 0%
17/03/10 11:49:52 INFO mapreduce.Job:  map 87% reduce 0%
17/03/10 11:49:55 INFO mapreduce.Job:  map 89% reduce 0%
17/03/10 11:49:58 INFO mapreduce.Job:  map 91% reduce 0%
17/03/10 11:50:01 INFO mapreduce.Job:  map 93% reduce 0%
17/03/10 11:50:04 INFO mapreduce.Job:  map 94% reduce 0%
17/03/10 11:50:07 INFO mapreduce.Job:  map 96% reduce 0%
17/03/10 11:50:10 INFO mapreduce.Job:  map 98% reduce 0%
17/03/10 11:50:12 INFO mapreduce.Job:  map 99% reduce 0%
17/03/10 11:50:13 INFO mapreduce.Job:  map 100% reduce 0%
17/03/10 11:50:14 INFO mapreduce.Job: Job job_1489145659996_0001 completed successfully
17/03/10 11:50:14 INFO mapreduce.Job: Counters: 31
	File System Counters
		FILE: Number of bytes read=0
		FILE: Number of bytes written=245240
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=170
		HDFS: Number of bytes written=6553600000
		HDFS: Number of read operations=8
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=4
	Job Counters
		Launched map tasks=2
		Other local map tasks=2
		Total time spent by all maps in occupied slots (ms)=221259
		Total time spent by all reduces in occupied slots (ms)=0
		Total time spent by all map tasks (ms)=221259
		Total vcore-seconds taken by all map tasks=221259
		Total megabyte-seconds taken by all map tasks=226569216
	Map-Reduce Framework
		Map input records=65536000
		Map output records=65536000
		Input split bytes=170
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=1026
		CPU time spent (ms)=104120
		Physical memory (bytes) snapshot=301252608
		Virtual memory (bytes) snapshot=3157098496
		Total committed heap usage (bytes)=390070272
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=140750829423462787
	File Input Format Counters
		Bytes Read=0
	File Output Format Counters
		Bytes Written=6553600000

real	2m4.761s
user	0m5.844s
sys	0m0.229s
```


```
[neymar@t1 ~]$ hdfs dfs -ls /user/neymar/tgen640
Found 3 items
-rw-r--r--   3 neymar supergroup          0 2017-03-10 11:50 /user/neymar/tgen640/_SUCCESS
-rw-r--r--   3 neymar supergroup 3276800000 2017-03-10 11:50 /user/neymar/tgen640/part-m-00000
-rw-r--r--   3 neymar supergroup 3276800000 2017-03-10 11:50 /user/neymar/tgen640/part-m-00001
```

```
[neymar@t1 ~]$ hdfs fsck /user/neymar/tgen640
Connecting to namenode via http://t1.cloudera.training.test:50070
FSCK started by neymar (auth:SIMPLE) from /172.31.43.101 for path /user/neymar/tgen640 at Fri Mar 10 11:52:15 UTC 2017
...Status: HEALTHY
 Total size:	6553600000 B
 Total dirs:	1
 Total files:	3
 Total symlinks:		0
 Total blocks (validated):	392 (avg. block size 16718367 B)
 Minimally replicated blocks:	392 (100.0 %)
 Over-replicated blocks:	0 (0.0 %)
 Under-replicated blocks:	0 (0.0 %)
 Mis-replicated blocks:		0 (0.0 %)
 Default replication factor:	3
 Average block replication:	3.0
 Corrupt blocks:		0
 Missing replicas:		0 (0.0 %)
 Number of data-nodes:		4
 Number of racks:		1
FSCK ended at Fri Mar 10 11:52:15 UTC 2017 in 20 milliseconds


The filesystem under path '/user/neymar/tgen640' is HEALTHY
```
