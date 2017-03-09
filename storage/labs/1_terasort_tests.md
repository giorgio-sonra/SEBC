```
$ time sudo -u giorgio-sonra yarn jar /opt/cloudera/parcels/CDH/lib/hadoop-mapreduce/hadoop-mapreduce-examples.jar teragen -Ddfs.block.size=33554432 -Dmapred.map.tasks=4 100000000 teragen

```

```
17/03/07 12:58:08 INFO Configuration.deprecation: session.id is deprecated. Instead, use dfs.metrics.session-id
17/03/07 12:58:08 INFO jvm.JvmMetrics: Initializing JVM Metrics with processName=JobTracker, sessionId=
17/03/07 12:58:08 INFO terasort.TeraSort: Generating 100000000 using 1
17/03/07 12:58:08 INFO mapreduce.JobSubmitter: number of splits:1
17/03/07 12:58:08 INFO Configuration.deprecation: dfs.block.size is deprecated. Instead, use dfs.blocksize
17/03/07 12:58:08 INFO Configuration.deprecation: mapred.map.tasks is deprecated. Instead, use mapreduce.job.maps
17/03/07 12:58:09 INFO mapreduce.JobSubmitter: Submitting tokens for job: job_local1895693310_0001
17/03/07 12:58:09 INFO mapreduce.Job: The url to track the job: http://localhost:8080/
17/03/07 12:58:09 INFO mapreduce.Job: Running job: job_local1895693310_0001
17/03/07 12:58:09 INFO mapred.LocalJobRunner: OutputCommitter set in config null
17/03/07 12:58:09 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/03/07 12:58:09 INFO mapred.LocalJobRunner: OutputCommitter is org.apache.hadoop.mapreduce.lib.output.FileOutputCommitter
17/03/07 12:58:09 INFO mapred.LocalJobRunner: Waiting for map tasks
17/03/07 12:58:09 INFO mapred.LocalJobRunner: Starting task: attempt_local1895693310_0001_m_000000_0
17/03/07 12:58:09 INFO output.FileOutputCommitter: File Output Committer Algorithm version is 1
17/03/07 12:58:09 INFO mapred.Task:  Using ResourceCalculatorProcessTree : [ ]
17/03/07 12:58:09 INFO mapred.MapTask: Processing split: org.apache.hadoop.examples.terasort.TeraGen$RangeInputFormat$RangeInputSplit@6adda258
17/03/07 12:58:10 INFO mapreduce.Job: Job job_local1895693310_0001 running in uber mode : false
17/03/07 12:58:10 INFO mapreduce.Job:  map 0% reduce 0%
17/03/07 12:58:15 INFO mapred.LocalJobRunner: map > map
17/03/07 12:58:16 INFO mapreduce.Job:  map 5% reduce 0%
17/03/07 12:58:18 INFO mapred.LocalJobRunner: map > map
17/03/07 12:58:19 INFO mapreduce.Job:  map 8% reduce 0%
17/03/07 12:58:21 INFO mapred.LocalJobRunner: map > map
17/03/07 12:58:22 INFO mapreduce.Job:  map 11% reduce 0%
17/03/07 12:58:24 INFO mapred.LocalJobRunner: map > map
17/03/07 12:58:25 INFO mapreduce.Job:  map 13% reduce 0%
17/03/07 12:58:27 INFO mapred.LocalJobRunner: map > map
17/03/07 12:58:28 INFO mapreduce.Job:  map 15% reduce 0%
17/03/07 12:58:30 INFO mapred.LocalJobRunner: map > map
17/03/07 12:58:31 INFO mapreduce.Job:  map 17% reduce 0%
17/03/07 12:58:33 INFO mapred.LocalJobRunner: map > map
17/03/07 12:58:34 INFO mapreduce.Job:  map 19% reduce 0%
17/03/07 12:58:36 INFO mapred.LocalJobRunner: map > map
17/03/07 12:58:37 INFO mapreduce.Job:  map 20% reduce 0%
17/03/07 12:58:39 INFO mapred.LocalJobRunner: map > map
17/03/07 12:58:40 INFO mapreduce.Job:  map 22% reduce 0%
17/03/07 12:58:42 INFO mapred.LocalJobRunner: map > map
17/03/07 12:58:43 INFO mapreduce.Job:  map 24% reduce 0%
17/03/07 12:58:45 INFO mapred.LocalJobRunner: map > map
17/03/07 12:58:46 INFO mapreduce.Job:  map 26% reduce 0%
17/03/07 12:58:48 INFO mapred.LocalJobRunner: map > map
17/03/07 12:58:49 INFO mapreduce.Job:  map 28% reduce 0%
17/03/07 12:58:51 INFO mapred.LocalJobRunner: map > map
17/03/07 12:58:52 INFO mapreduce.Job:  map 30% reduce 0%
17/03/07 12:58:54 INFO mapred.LocalJobRunner: map > map
17/03/07 12:58:55 INFO mapreduce.Job:  map 32% reduce 0%
17/03/07 12:58:57 INFO mapred.LocalJobRunner: map > map
17/03/07 12:58:58 INFO mapreduce.Job:  map 34% reduce 0%
17/03/07 12:59:00 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:01 INFO mapreduce.Job:  map 36% reduce 0%
17/03/07 12:59:03 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:04 INFO mapreduce.Job:  map 38% reduce 0%
17/03/07 12:59:06 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:07 INFO mapreduce.Job:  map 40% reduce 0%
17/03/07 12:59:09 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:10 INFO mapreduce.Job:  map 42% reduce 0%
17/03/07 12:59:12 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:13 INFO mapreduce.Job:  map 44% reduce 0%
17/03/07 12:59:15 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:16 INFO mapreduce.Job:  map 46% reduce 0%
17/03/07 12:59:18 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:19 INFO mapreduce.Job:  map 48% reduce 0%
17/03/07 12:59:21 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:22 INFO mapreduce.Job:  map 49% reduce 0%
17/03/07 12:59:24 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:25 INFO mapreduce.Job:  map 51% reduce 0%
17/03/07 12:59:27 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:28 INFO mapreduce.Job:  map 53% reduce 0%
17/03/07 12:59:30 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:31 INFO mapreduce.Job:  map 55% reduce 0%
17/03/07 12:59:33 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:34 INFO mapreduce.Job:  map 57% reduce 0%
17/03/07 12:59:36 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:37 INFO mapreduce.Job:  map 59% reduce 0%
17/03/07 12:59:39 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:40 INFO mapreduce.Job:  map 61% reduce 0%
17/03/07 12:59:42 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:43 INFO mapreduce.Job:  map 62% reduce 0%
17/03/07 12:59:45 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:46 INFO mapreduce.Job:  map 65% reduce 0%
17/03/07 12:59:48 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:49 INFO mapreduce.Job:  map 67% reduce 0%
17/03/07 12:59:51 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:52 INFO mapreduce.Job:  map 69% reduce 0%
17/03/07 12:59:54 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:55 INFO mapreduce.Job:  map 71% reduce 0%
17/03/07 12:59:57 INFO mapred.LocalJobRunner: map > map
17/03/07 12:59:58 INFO mapreduce.Job:  map 72% reduce 0%
17/03/07 13:00:00 INFO mapred.LocalJobRunner: map > map
17/03/07 13:00:01 INFO mapreduce.Job:  map 74% reduce 0%
17/03/07 13:00:03 INFO mapred.LocalJobRunner: map > map
17/03/07 13:00:04 INFO mapreduce.Job:  map 76% reduce 0%
17/03/07 13:00:06 INFO mapred.LocalJobRunner: map > map
17/03/07 13:00:07 INFO mapreduce.Job:  map 78% reduce 0%
17/03/07 13:00:09 INFO mapred.LocalJobRunner: map > map
17/03/07 13:00:10 INFO mapreduce.Job:  map 80% reduce 0%
17/03/07 13:00:12 INFO mapred.LocalJobRunner: map > map
17/03/07 13:00:13 INFO mapreduce.Job:  map 82% reduce 0%
17/03/07 13:00:15 INFO mapred.LocalJobRunner: map > map
17/03/07 13:00:16 INFO mapreduce.Job:  map 84% reduce 0%
17/03/07 13:00:18 INFO mapred.LocalJobRunner: map > map
17/03/07 13:00:19 INFO mapreduce.Job:  map 86% reduce 0%
17/03/07 13:00:21 INFO mapred.LocalJobRunner: map > map
17/03/07 13:00:22 INFO mapreduce.Job:  map 88% reduce 0%
17/03/07 13:00:24 INFO mapred.LocalJobRunner: map > map
17/03/07 13:00:25 INFO mapreduce.Job:  map 90% reduce 0%
17/03/07 13:00:27 INFO mapred.LocalJobRunner: map > map
17/03/07 13:00:28 INFO mapreduce.Job:  map 92% reduce 0%
17/03/07 13:00:30 INFO mapred.LocalJobRunner: map > map
17/03/07 13:00:31 INFO mapreduce.Job:  map 94% reduce 0%
17/03/07 13:00:33 INFO mapred.LocalJobRunner: map > map
17/03/07 13:00:34 INFO mapreduce.Job:  map 95% reduce 0%
17/03/07 13:00:36 INFO mapred.LocalJobRunner: map > map
17/03/07 13:00:37 INFO mapreduce.Job:  map 97% reduce 0%
17/03/07 13:00:39 INFO mapred.LocalJobRunner: map > map
17/03/07 13:00:40 INFO mapreduce.Job:  map 99% reduce 0%
17/03/07 13:00:40 INFO mapred.LocalJobRunner: map > map
17/03/07 13:00:40 INFO mapred.Task: Task:attempt_local1895693310_0001_m_000000_0 is done. And is in the process of committing
17/03/07 13:00:40 INFO mapred.LocalJobRunner: map > map
17/03/07 13:00:40 INFO mapred.Task: Task attempt_local1895693310_0001_m_000000_0 is allowed to commit now
17/03/07 13:00:40 INFO output.FileOutputCommitter: Saved output of task 'attempt_local1895693310_0001_m_000000_0' to hdfs://n2.localdomain:8020/user/giorgio-sonra/teragen/_temporary/0/task_local1895693310_0001_m_000000
17/03/07 13:00:40 INFO mapred.LocalJobRunner: map
17/03/07 13:00:40 INFO mapred.Task: Task 'attempt_local1895693310_0001_m_000000_0' done.
17/03/07 13:00:40 INFO mapred.LocalJobRunner: Finishing task: attempt_local1895693310_0001_m_000000_0
17/03/07 13:00:40 INFO mapred.LocalJobRunner: map task executor complete.
17/03/07 13:00:41 INFO mapreduce.Job:  map 100% reduce 0%
17/03/07 13:00:41 INFO mapreduce.Job: Job job_local1895693310_0001 completed successfully
17/03/07 13:00:41 INFO mapreduce.Job: Counters: 21
	File System Counters
		FILE: Number of bytes read=276330
		FILE: Number of bytes written=576151
		FILE: Number of read operations=0
		FILE: Number of large read operations=0
		FILE: Number of write operations=0
		HDFS: Number of bytes read=0
		HDFS: Number of bytes written=10000000000
		HDFS: Number of read operations=4
		HDFS: Number of large read operations=0
		HDFS: Number of write operations=3
	Map-Reduce Framework
		Map input records=100000000
		Map output records=100000000
		Input split bytes=83
		Spilled Records=0
		Failed Shuffles=0
		Merged Map outputs=0
		GC time elapsed (ms)=1193
		Total committed heap usage (bytes)=205520896
	org.apache.hadoop.examples.terasort.TeraGen$Counters
		CHECKSUM=214760662691937609
	File Input Format Counters
		Bytes Read=0
	File Output Format Counters
		Bytes Written=10000000000
```

```
real	2m35.255s
user	2m7.580s
sys	0m3.900s
```
