# Yarn Results


<div style="overflow-y: scroll; height:400px;"><pre><code>
[centos@n1 ~]$ sudo mv ./YARNtest.sh /home/giorgio-sonra/tera/;sudo chown giorgio-sonra /home/giorgio-sonra/tera/YARNtest.sh; sudo su - giorgio-sonra
Last login: Wed Mar  8 00:54:45 UTC 2017 on pts/0
[giorgio-sonra@n1 ~]$ hdfs dfs -rm -r -skipTrash /results/*;cd tera;./YARNtest.sh
rm: `/results/*': No such file or directory
Testing loop started on Wed Mar 8 01:17:17 UTC 2017

Testing case
Mappers 6
Reducers 3
Container Memory 512
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 107374182 /results/tg-10GB-6-3-512

real	3m4.874s
user	0m6.747s
sys	0m0.283s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=6 -Dmapreduce.job.reduces=3 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 -Dmapreduce.reduce.memory.mb=512 -Dmapreduce.reduce.java.opts.max.heap=409 /results/tg-10GB-6-3-512 /results/ts-10GB-6-3-512

real	4m6.026s
user	0m8.819s
sys	0m0.315s
+ set +x
Deleted /results/tg-10GB-6-3-512
Deleted /results/ts-10GB-6-3-512

Testing case
Mappers 6
Reducers 3
Container Memory 1024
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 107374182 /results/tg-10GB-6-3-1024

real	2m48.788s
user	0m6.392s
sys	0m0.304s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=6 -Dmapreduce.job.reduces=3 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 /results/tg-10GB-6-3-1024 /results/ts-10GB-6-3-1024

real	4m15.189s
user	0m8.517s
sys	0m0.358s
+ set +x
Deleted /results/tg-10GB-6-3-1024
Deleted /results/ts-10GB-6-3-1024

Testing case
Mappers 6
Reducers 3
Container Memory 2048
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 107374182 /results/tg-10GB-6-3-2048

real	3m3.247s
user	0m6.445s
sys	0m0.270s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=6 -Dmapreduce.job.reduces=3 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 -Dmapreduce.reduce.memory.mb=2048 -Dmapreduce.reduce.java.opts.max.heap=1638 /results/tg-10GB-6-3-2048 /results/ts-10GB-6-3-2048

real	3m58.502s
user	0m8.498s
sys	0m0.329s
+ set +x
Deleted /results/tg-10GB-6-3-2048
Deleted /results/ts-10GB-6-3-2048

Testing case
Mappers 6
Reducers 3
Container Memory 2730
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 107374182 /results/tg-10GB-6-3-2730

real	2m55.616s
user	0m6.163s
sys	0m0.275s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=6 -Dmapreduce.job.reduces=3 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 -Dmapreduce.reduce.memory.mb=2730 -Dmapreduce.reduce.java.opts.max.heap=2184 /results/tg-10GB-6-3-2730 /results/ts-10GB-6-3-2730

real	4m16.464s
user	0m8.690s
sys	0m0.330s
+ set +x
Deleted /results/tg-10GB-6-3-2730
Deleted /results/ts-10GB-6-3-2730

Testing case
Mappers 6
Reducers 6
Container Memory 512
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 107374182 /results/tg-10GB-6-6-512

real	2m53.985s
user	0m6.052s
sys	0m0.324s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=6 -Dmapreduce.job.reduces=6 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 -Dmapreduce.reduce.memory.mb=512 -Dmapreduce.reduce.java.opts.max.heap=409 /results/tg-10GB-6-6-512 /results/ts-10GB-6-6-512

real	3m57.228s
user	0m8.154s
sys	0m0.324s
+ set +x
Deleted /results/tg-10GB-6-6-512
Deleted /results/ts-10GB-6-6-512

Testing case
Mappers 6
Reducers 6
Container Memory 1024
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 107374182 /results/tg-10GB-6-6-1024

real	2m52.809s
user	0m6.239s
sys	0m0.268s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=6 -Dmapreduce.job.reduces=6 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 /results/tg-10GB-6-6-1024 /results/ts-10GB-6-6-1024

real	3m46.358s
user	0m8.615s
sys	0m0.299s
+ set +x
Deleted /results/tg-10GB-6-6-1024
Deleted /results/ts-10GB-6-6-1024

Testing case
Mappers 6
Reducers 6
Container Memory 2048
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 107374182 /results/tg-10GB-6-6-2048

real	2m55.605s
user	0m6.096s
sys	0m0.279s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=6 -Dmapreduce.job.reduces=6 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 -Dmapreduce.reduce.memory.mb=2048 -Dmapreduce.reduce.java.opts.max.heap=1638 /results/tg-10GB-6-6-2048 /results/ts-10GB-6-6-2048

real	3m39.623s
user	0m8.128s
sys	0m0.325s
+ set +x
Deleted /results/tg-10GB-6-6-2048
Deleted /results/ts-10GB-6-6-2048

Testing case
Mappers 6
Reducers 6
Container Memory 2730
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 107374182 /results/tg-10GB-6-6-2730

real	2m53.396s
user	0m6.039s
sys	0m0.267s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=6 -Dmapreduce.job.reduces=6 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 -Dmapreduce.reduce.memory.mb=2730 -Dmapreduce.reduce.java.opts.max.heap=2184 /results/tg-10GB-6-6-2730 /results/ts-10GB-6-6-2730

real	4m5.306s
user	0m8.336s
sys	0m0.331s
+ set +x
Deleted /results/tg-10GB-6-6-2730
Deleted /results/ts-10GB-6-6-2730

Testing case
Mappers 6
Reducers 8
Container Memory 512
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 107374182 /results/tg-10GB-6-8-512

real	3m7.431s
user	0m6.105s
sys	0m0.278s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=6 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 -Dmapreduce.reduce.memory.mb=512 -Dmapreduce.reduce.java.opts.max.heap=409 /results/tg-10GB-6-8-512 /results/ts-10GB-6-8-512

real	3m54.540s
user	0m8.143s
sys	0m0.324s
+ set +x
Deleted /results/tg-10GB-6-8-512
Deleted /results/ts-10GB-6-8-512

Testing case
Mappers 6
Reducers 8
Container Memory 1024
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 107374182 /results/tg-10GB-6-8-1024

real	2m43.936s
user	0m6.037s
sys	0m0.284s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=6 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 /results/tg-10GB-6-8-1024 /results/ts-10GB-6-8-1024

real	3m36.809s
user	0m8.686s
sys	0m0.307s
+ set +x
Deleted /results/tg-10GB-6-8-1024
Deleted /results/ts-10GB-6-8-1024

Testing case
Mappers 6
Reducers 8
Container Memory 2048
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 107374182 /results/tg-10GB-6-8-2048

real	2m39.466s
user	0m6.463s
sys	0m0.259s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=6 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 -Dmapreduce.reduce.memory.mb=2048 -Dmapreduce.reduce.java.opts.max.heap=1638 /results/tg-10GB-6-8-2048 /results/ts-10GB-6-8-2048

real	3m43.659s
user	0m8.611s
sys	0m0.320s
+ set +x
Deleted /results/tg-10GB-6-8-2048
Deleted /results/ts-10GB-6-8-2048

Testing case
Mappers 6
Reducers 8
Container Memory 2730
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 107374182 /results/tg-10GB-6-8-2730

real	2m51.586s
user	0m6.045s
sys	0m0.251s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=6 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 -Dmapreduce.reduce.memory.mb=2730 -Dmapreduce.reduce.java.opts.max.heap=2184 /results/tg-10GB-6-8-2730 /results/ts-10GB-6-8-2730

real	4m6.066s
user	0m8.918s
sys	0m0.302s
+ set +x
Deleted /results/tg-10GB-6-8-2730
Deleted /results/ts-10GB-6-8-2730

Testing case
Mappers 6
Reducers 9
Container Memory 512
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 107374182 /results/tg-10GB-6-9-512

real	2m51.133s
user	0m6.513s
sys	0m0.279s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=6 -Dmapreduce.job.reduces=9 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 -Dmapreduce.reduce.memory.mb=512 -Dmapreduce.reduce.java.opts.max.heap=409 /results/tg-10GB-6-9-512 /results/ts-10GB-6-9-512

real	3m44.606s
user	0m8.427s
sys	0m0.359s
+ set +x
Deleted /results/tg-10GB-6-9-512
Deleted /results/ts-10GB-6-9-512

Testing case
Mappers 6
Reducers 9
Container Memory 1024
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 107374182 /results/tg-10GB-6-9-1024

real	2m50.111s
user	0m6.121s
sys	0m0.272s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=6 -Dmapreduce.job.reduces=9 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 /results/tg-10GB-6-9-1024 /results/ts-10GB-6-9-1024

real	3m38.574s
user	0m8.656s
sys	0m0.320s
+ set +x
Deleted /results/tg-10GB-6-9-1024
Deleted /results/ts-10GB-6-9-1024

Testing case
Mappers 6
Reducers 9
Container Memory 2048
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 107374182 /results/tg-10GB-6-9-2048

real	2m45.503s
user	0m6.072s
sys	0m0.257s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=6 -Dmapreduce.job.reduces=9 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 -Dmapreduce.reduce.memory.mb=2048 -Dmapreduce.reduce.java.opts.max.heap=1638 /results/tg-10GB-6-9-2048 /results/ts-10GB-6-9-2048

real	3m47.547s
user	0m8.432s
sys	0m0.340s
+ set +x
Deleted /results/tg-10GB-6-9-2048
Deleted /results/ts-10GB-6-9-2048

Testing case
Mappers 6
Reducers 9
Container Memory 2730
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=6 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 107374182 /results/tg-10GB-6-9-2730

real	2m47.586s
user	0m6.139s
sys	0m0.274s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=6 -Dmapreduce.job.reduces=9 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 -Dmapreduce.reduce.memory.mb=2730 -Dmapreduce.reduce.java.opts.max.heap=2184 /results/tg-10GB-6-9-2730 /results/ts-10GB-6-9-2730

real	4m6.155s
user	0m8.688s
sys	0m0.319s
+ set +x
Deleted /results/tg-10GB-6-9-2730
Deleted /results/ts-10GB-6-9-2730

Testing case
Mappers 8
Reducers 3
Container Memory 512
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=8 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 107374182 /results/tg-10GB-8-3-512

real	2m51.201s
user	0m6.528s
sys	0m0.276s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=8 -Dmapreduce.job.reduces=3 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 -Dmapreduce.reduce.memory.mb=512 -Dmapreduce.reduce.java.opts.max.heap=409 /results/tg-10GB-8-3-512 /results/ts-10GB-8-3-512

real	4m1.297s
user	0m8.903s
sys	0m0.338s
+ set +x
Deleted /results/tg-10GB-8-3-512
Deleted /results/ts-10GB-8-3-512

Testing case
Mappers 8
Reducers 3
Container Memory 1024
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=8 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 107374182 /results/tg-10GB-8-3-1024

real	2m46.603s
user	0m6.255s
sys	0m0.302s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=8 -Dmapreduce.job.reduces=3 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 /results/tg-10GB-8-3-1024 /results/ts-10GB-8-3-1024

real	4m6.744s
user	0m8.584s
sys	0m0.314s
+ set +x
Deleted /results/tg-10GB-8-3-1024
Deleted /results/ts-10GB-8-3-1024

Testing case
Mappers 8
Reducers 3
Container Memory 2048
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=8 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 107374182 /results/tg-10GB-8-3-2048

real	2m46.880s
user	0m6.277s
sys	0m0.295s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=8 -Dmapreduce.job.reduces=3 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 -Dmapreduce.reduce.memory.mb=2048 -Dmapreduce.reduce.java.opts.max.heap=1638 /results/tg-10GB-8-3-2048 /results/ts-10GB-8-3-2048

real	3m46.158s
user	0m8.182s
sys	0m0.285s
+ set +x
Deleted /results/tg-10GB-8-3-2048
Deleted /results/ts-10GB-8-3-2048

Testing case
Mappers 8
Reducers 3
Container Memory 2730
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=8 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 107374182 /results/tg-10GB-8-3-2730

real	3m3.766s
user	0m6.178s
sys	0m0.259s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=8 -Dmapreduce.job.reduces=3 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 -Dmapreduce.reduce.memory.mb=2730 -Dmapreduce.reduce.java.opts.max.heap=2184 /results/tg-10GB-8-3-2730 /results/ts-10GB-8-3-2730

real	4m12.976s
user	0m8.493s
sys	0m0.315s
+ set +x
Deleted /results/tg-10GB-8-3-2730
Deleted /results/ts-10GB-8-3-2730

Testing case
Mappers 8
Reducers 6
Container Memory 512
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=8 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 107374182 /results/tg-10GB-8-6-512

real	2m48.352s
user	0m6.232s
sys	0m0.274s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=8 -Dmapreduce.job.reduces=6 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 -Dmapreduce.reduce.memory.mb=512 -Dmapreduce.reduce.java.opts.max.heap=409 /results/tg-10GB-8-6-512 /results/ts-10GB-8-6-512

real	3m40.772s
user	0m8.177s
sys	0m0.321s
+ set +x
Deleted /results/tg-10GB-8-6-512
Deleted /results/ts-10GB-8-6-512

Testing case
Mappers 8
Reducers 6
Container Memory 1024
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=8 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 107374182 /results/tg-10GB-8-6-1024

real	2m47.797s
user	0m6.533s
sys	0m0.281s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=8 -Dmapreduce.job.reduces=6 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 /results/tg-10GB-8-6-1024 /results/ts-10GB-8-6-1024

real	3m30.338s
user	0m8.488s
sys	0m0.329s
+ set +x
Deleted /results/tg-10GB-8-6-1024
Deleted /results/ts-10GB-8-6-1024

Testing case
Mappers 8
Reducers 6
Container Memory 2048
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=8 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 107374182 /results/tg-10GB-8-6-2048

real	2m48.855s
user	0m6.090s
sys	0m0.280s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=8 -Dmapreduce.job.reduces=6 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 -Dmapreduce.reduce.memory.mb=2048 -Dmapreduce.reduce.java.opts.max.heap=1638 /results/tg-10GB-8-6-2048 /results/ts-10GB-8-6-2048

real	3m35.341s
user	0m8.292s
sys	0m0.326s
+ set +x
Deleted /results/tg-10GB-8-6-2048
Deleted /results/ts-10GB-8-6-2048

Testing case
Mappers 8
Reducers 6
Container Memory 2730
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=8 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 107374182 /results/tg-10GB-8-6-2730

real	2m57.660s
user	0m6.154s
sys	0m0.243s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=8 -Dmapreduce.job.reduces=6 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 -Dmapreduce.reduce.memory.mb=2730 -Dmapreduce.reduce.java.opts.max.heap=2184 /results/tg-10GB-8-6-2730 /results/ts-10GB-8-6-2730

real	3m50.342s
user	0m7.899s
sys	0m0.336s
+ set +x
Deleted /results/tg-10GB-8-6-2730
Deleted /results/ts-10GB-8-6-2730

Testing case
Mappers 8
Reducers 8
Container Memory 512
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=8 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 107374182 /results/tg-10GB-8-8-512

real	2m41.975s
user	0m6.248s
sys	0m0.271s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=8 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 -Dmapreduce.reduce.memory.mb=512 -Dmapreduce.reduce.java.opts.max.heap=409 /results/tg-10GB-8-8-512 /results/ts-10GB-8-8-512

real	3m41.174s
user	0m9.017s
sys	0m0.353s
+ set +x
Deleted /results/tg-10GB-8-8-512
Deleted /results/ts-10GB-8-8-512

Testing case
Mappers 8
Reducers 8
Container Memory 1024
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=8 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 107374182 /results/tg-10GB-8-8-1024

real	2m45.048s
user	0m6.168s
sys	0m0.310s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=8 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 /results/tg-10GB-8-8-1024 /results/ts-10GB-8-8-1024

real	3m30.438s
user	0m8.317s
sys	0m0.333s
+ set +x
Deleted /results/tg-10GB-8-8-1024
Deleted /results/ts-10GB-8-8-1024

Testing case
Mappers 8
Reducers 8
Container Memory 2048
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=8 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 107374182 /results/tg-10GB-8-8-2048

real	2m46.087s
user	0m6.146s
sys	0m0.256s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=8 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 -Dmapreduce.reduce.memory.mb=2048 -Dmapreduce.reduce.java.opts.max.heap=1638 /results/tg-10GB-8-8-2048 /results/ts-10GB-8-8-2048

real	3m35.343s
user	0m8.194s
sys	0m0.344s
+ set +x
Deleted /results/tg-10GB-8-8-2048
Deleted /results/ts-10GB-8-8-2048

Testing case
Mappers 8
Reducers 8
Container Memory 2730
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=8 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 107374182 /results/tg-10GB-8-8-2730

real	2m55.587s
user	0m6.451s
sys	0m0.373s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=8 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 -Dmapreduce.reduce.memory.mb=2730 -Dmapreduce.reduce.java.opts.max.heap=2184 /results/tg-10GB-8-8-2730 /results/ts-10GB-8-8-2730

real	4m10.409s
user	0m8.482s
sys	0m0.379s
+ set +x
Deleted /results/tg-10GB-8-8-2730
Deleted /results/ts-10GB-8-8-2730

Testing case
Mappers 8
Reducers 9
Container Memory 512
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=8 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 107374182 /results/tg-10GB-8-9-512

real	3m1.247s
user	0m6.073s
sys	0m0.269s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=8 -Dmapreduce.job.reduces=9 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 -Dmapreduce.reduce.memory.mb=512 -Dmapreduce.reduce.java.opts.max.heap=409 /results/tg-10GB-8-9-512 /results/ts-10GB-8-9-512

real	3m53.907s
user	0m8.274s
sys	0m0.358s
+ set +x
Deleted /results/tg-10GB-8-9-512
Deleted /results/ts-10GB-8-9-512

Testing case
Mappers 8
Reducers 9
Container Memory 1024
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=8 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 107374182 /results/tg-10GB-8-9-1024

real	2m53.085s
user	0m6.179s
sys	0m0.263s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=8 -Dmapreduce.job.reduces=9 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 /results/tg-10GB-8-9-1024 /results/ts-10GB-8-9-1024

real	3m50.503s
user	0m8.287s
sys	0m0.320s
+ set +x
Deleted /results/tg-10GB-8-9-1024
Deleted /results/ts-10GB-8-9-1024

Testing case
Mappers 8
Reducers 9
Container Memory 2048
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=8 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 107374182 /results/tg-10GB-8-9-2048

real	2m52.337s
user	0m6.130s
sys	0m0.258s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=8 -Dmapreduce.job.reduces=9 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 -Dmapreduce.reduce.memory.mb=2048 -Dmapreduce.reduce.java.opts.max.heap=1638 /results/tg-10GB-8-9-2048 /results/ts-10GB-8-9-2048

real	3m52.659s
user	0m8.640s
sys	0m0.368s
+ set +x
Deleted /results/tg-10GB-8-9-2048
Deleted /results/ts-10GB-8-9-2048

Testing case
Mappers 8
Reducers 9
Container Memory 2730
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=8 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 107374182 /results/tg-10GB-8-9-2730

real	3m17.501s
user	0m6.531s
sys	0m0.279s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=8 -Dmapreduce.job.reduces=9 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 -Dmapreduce.reduce.memory.mb=2730 -Dmapreduce.reduce.java.opts.max.heap=2184 /results/tg-10GB-8-9-2730 /results/ts-10GB-8-9-2730

real	4m7.649s
user	0m8.698s
sys	0m0.333s
+ set +x
Deleted /results/tg-10GB-8-9-2730
Deleted /results/ts-10GB-8-9-2730

Testing case
Mappers 9
Reducers 3
Container Memory 512
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=9 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 107374182 /results/tg-10GB-9-3-512

real	2m55.558s
user	0m6.154s
sys	0m0.296s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=3 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 -Dmapreduce.reduce.memory.mb=512 -Dmapreduce.reduce.java.opts.max.heap=409 /results/tg-10GB-9-3-512 /results/ts-10GB-9-3-512

real	4m7.298s
user	0m8.004s
sys	0m0.337s
+ set +x
Deleted /results/tg-10GB-9-3-512
Deleted /results/ts-10GB-9-3-512

Testing case
Mappers 9
Reducers 3
Container Memory 1024
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=9 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 107374182 /results/tg-10GB-9-3-1024

real	2m55.818s
user	0m6.239s
sys	0m0.305s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=3 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 /results/tg-10GB-9-3-1024 /results/ts-10GB-9-3-1024

real	3m51.467s
user	0m8.391s
sys	0m0.335s
+ set +x
Deleted /results/tg-10GB-9-3-1024
Deleted /results/ts-10GB-9-3-1024

Testing case
Mappers 9
Reducers 3
Container Memory 2048
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=9 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 107374182 /results/tg-10GB-9-3-2048

real	2m51.171s
user	0m6.250s
sys	0m0.273s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=3 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 -Dmapreduce.reduce.memory.mb=2048 -Dmapreduce.reduce.java.opts.max.heap=1638 /results/tg-10GB-9-3-2048 /results/ts-10GB-9-3-2048

real	3m41.228s
user	0m8.233s
sys	0m0.349s
+ set +x
Deleted /results/tg-10GB-9-3-2048
Deleted /results/ts-10GB-9-3-2048

Testing case
Mappers 9
Reducers 3
Container Memory 2730
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=9 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 107374182 /results/tg-10GB-9-3-2730

real	2m56.535s
user	0m6.625s
sys	0m0.266s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=3 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 -Dmapreduce.reduce.memory.mb=2730 -Dmapreduce.reduce.java.opts.max.heap=2184 /results/tg-10GB-9-3-2730 /results/ts-10GB-9-3-2730

real	3m57.435s
user	0m8.322s
sys	0m0.359s
+ set +x
Deleted /results/tg-10GB-9-3-2730
Deleted /results/ts-10GB-9-3-2730

Testing case
Mappers 9
Reducers 6
Container Memory 512
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=9 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 107374182 /results/tg-10GB-9-6-512

real	2m55.172s
user	0m6.129s
sys	0m0.281s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=6 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 -Dmapreduce.reduce.memory.mb=512 -Dmapreduce.reduce.java.opts.max.heap=409 /results/tg-10GB-9-6-512 /results/ts-10GB-9-6-512

real	3m45.142s
user	0m8.146s
sys	0m0.375s
+ set +x
Deleted /results/tg-10GB-9-6-512
Deleted /results/ts-10GB-9-6-512

Testing case
Mappers 9
Reducers 6
Container Memory 1024
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=9 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 107374182 /results/tg-10GB-9-6-1024

real	2m46.478s
user	0m6.036s
sys	0m0.319s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=6 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 /results/tg-10GB-9-6-1024 /results/ts-10GB-9-6-1024

real	3m32.628s
user	0m8.215s
sys	0m0.358s
+ set +x
Deleted /results/tg-10GB-9-6-1024
Deleted /results/ts-10GB-9-6-1024

Testing case
Mappers 9
Reducers 6
Container Memory 2048
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=9 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 107374182 /results/tg-10GB-9-6-2048

real	2m45.827s
user	0m6.222s
sys	0m0.254s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=6 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 -Dmapreduce.reduce.memory.mb=2048 -Dmapreduce.reduce.java.opts.max.heap=1638 /results/tg-10GB-9-6-2048 /results/ts-10GB-9-6-2048

real	3m34.538s
user	0m8.172s
sys	0m0.308s
+ set +x
Deleted /results/tg-10GB-9-6-2048
Deleted /results/ts-10GB-9-6-2048

Testing case
Mappers 9
Reducers 6
Container Memory 2730
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=9 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 107374182 /results/tg-10GB-9-6-2730

real	2m55.052s
user	0m6.116s
sys	0m0.309s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=6 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 -Dmapreduce.reduce.memory.mb=2730 -Dmapreduce.reduce.java.opts.max.heap=2184 /results/tg-10GB-9-6-2730 /results/ts-10GB-9-6-2730

real	3m53.122s
user	0m8.193s
sys	0m0.331s
+ set +x
Deleted /results/tg-10GB-9-6-2730
Deleted /results/ts-10GB-9-6-2730

Testing case
Mappers 9
Reducers 8
Container Memory 512
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=9 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 107374182 /results/tg-10GB-9-8-512

real	2m51.259s
user	0m6.210s
sys	0m0.262s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 -Dmapreduce.reduce.memory.mb=512 -Dmapreduce.reduce.java.opts.max.heap=409 /results/tg-10GB-9-8-512 /results/ts-10GB-9-8-512

real	3m35.156s
user	0m8.135s
sys	0m0.314s
+ set +x
Deleted /results/tg-10GB-9-8-512
Deleted /results/ts-10GB-9-8-512

Testing case
Mappers 9
Reducers 8
Container Memory 1024
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=9 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 107374182 /results/tg-10GB-9-8-1024

real	2m54.553s
user	0m6.245s
sys	0m0.281s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 /results/tg-10GB-9-8-1024 /results/ts-10GB-9-8-1024

real	3m28.351s
user	0m8.083s
sys	0m0.351s
+ set +x
Deleted /results/tg-10GB-9-8-1024
Deleted /results/ts-10GB-9-8-1024

Testing case
Mappers 9
Reducers 8
Container Memory 2048
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=9 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 107374182 /results/tg-10GB-9-8-2048

real	2m49.513s
user	0m6.156s
sys	0m0.302s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 -Dmapreduce.reduce.memory.mb=2048 -Dmapreduce.reduce.java.opts.max.heap=1638 /results/tg-10GB-9-8-2048 /results/ts-10GB-9-8-2048

real	3m48.934s
user	0m8.189s
sys	0m0.305s
+ set +x
Deleted /results/tg-10GB-9-8-2048
Deleted /results/ts-10GB-9-8-2048

Testing case
Mappers 9
Reducers 8
Container Memory 2730
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=9 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 107374182 /results/tg-10GB-9-8-2730

real	2m55.541s
user	0m6.365s
sys	0m0.303s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 -Dmapreduce.reduce.memory.mb=2730 -Dmapreduce.reduce.java.opts.max.heap=2184 /results/tg-10GB-9-8-2730 /results/ts-10GB-9-8-2730

real	3m58.639s
user	0m8.095s
sys	0m0.311s
+ set +x
Deleted /results/tg-10GB-9-8-2730
Deleted /results/ts-10GB-9-8-2730

Testing case
Mappers 9
Reducers 9
Container Memory 512
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=9 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 107374182 /results/tg-10GB-9-9-512

real	2m54.326s
user	0m6.261s
sys	0m0.288s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=9 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 -Dmapreduce.reduce.memory.mb=512 -Dmapreduce.reduce.java.opts.max.heap=409 /results/tg-10GB-9-9-512 /results/ts-10GB-9-9-512

real	3m45.355s
user	0m8.255s
sys	0m0.369s
+ set +x
Deleted /results/tg-10GB-9-9-512
Deleted /results/ts-10GB-9-9-512

Testing case
Mappers 9
Reducers 9
Container Memory 1024
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=9 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 107374182 /results/tg-10GB-9-9-1024

real	2m55.721s
user	0m6.423s
sys	0m0.297s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=9 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 /results/tg-10GB-9-9-1024 /results/ts-10GB-9-9-1024

real	3m43.806s
user	0m8.024s
sys	0m0.355s
+ set +x
Deleted /results/tg-10GB-9-9-1024
Deleted /results/ts-10GB-9-9-1024

Testing case
Mappers 9
Reducers 9
Container Memory 2048
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=9 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 107374182 /results/tg-10GB-9-9-2048

real	3m0.274s
user	0m6.084s
sys	0m0.317s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=9 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 -Dmapreduce.reduce.memory.mb=2048 -Dmapreduce.reduce.java.opts.max.heap=1638 /results/tg-10GB-9-9-2048 /results/ts-10GB-9-9-2048

real	3m46.310s
user	0m8.335s
sys	0m0.359s
+ set +x
Deleted /results/tg-10GB-9-9-2048
Deleted /results/ts-10GB-9-9-2048

Testing case
Mappers 9
Reducers 9
Container Memory 2730
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=9 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 107374182 /results/tg-10GB-9-9-2730

real	3m8.271s
user	0m6.253s
sys	0m0.319s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=9 -Dmapreduce.job.reduces=9 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 -Dmapreduce.reduce.memory.mb=2730 -Dmapreduce.reduce.java.opts.max.heap=2184 /results/tg-10GB-9-9-2730 /results/ts-10GB-9-9-2730

real	4m9.750s
user	0m8.529s
sys	0m0.373s
+ set +x
Deleted /results/tg-10GB-9-9-2730
Deleted /results/ts-10GB-9-9-2730

Testing case
Mappers 12
Reducers 3
Container Memory 512
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=12 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 107374182 /results/tg-10GB-12-3-512

real	2m59.295s
user	0m6.550s
sys	0m0.271s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=12 -Dmapreduce.job.reduces=3 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 -Dmapreduce.reduce.memory.mb=512 -Dmapreduce.reduce.java.opts.max.heap=409 /results/tg-10GB-12-3-512 /results/ts-10GB-12-3-512

real	4m11.811s
user	0m8.855s
sys	0m0.332s
+ set +x
Deleted /results/tg-10GB-12-3-512
Deleted /results/ts-10GB-12-3-512

Testing case
Mappers 12
Reducers 3
Container Memory 1024
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=12 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 107374182 /results/tg-10GB-12-3-1024

real	3m2.633s
user	0m6.511s
sys	0m0.298s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=12 -Dmapreduce.job.reduces=3 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 /results/tg-10GB-12-3-1024 /results/ts-10GB-12-3-1024

real	4m15.777s
user	0m8.381s
sys	0m0.345s
+ set +x
Deleted /results/tg-10GB-12-3-1024
Deleted /results/ts-10GB-12-3-1024

Testing case
Mappers 12
Reducers 3
Container Memory 2048
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=12 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 107374182 /results/tg-10GB-12-3-2048

real	2m59.621s
user	0m6.339s
sys	0m0.308s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=12 -Dmapreduce.job.reduces=3 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 -Dmapreduce.reduce.memory.mb=2048 -Dmapreduce.reduce.java.opts.max.heap=1638 /results/tg-10GB-12-3-2048 /results/ts-10GB-12-3-2048

real	4m7.819s
user	0m7.919s
sys	0m0.363s
+ set +x
Deleted /results/tg-10GB-12-3-2048
Deleted /results/ts-10GB-12-3-2048

Testing case
Mappers 12
Reducers 3
Container Memory 2730
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=12 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 107374182 /results/tg-10GB-12-3-2730

real	3m6.771s
user	0m6.197s
sys	0m0.269s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=12 -Dmapreduce.job.reduces=3 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 -Dmapreduce.reduce.memory.mb=2730 -Dmapreduce.reduce.java.opts.max.heap=2184 /results/tg-10GB-12-3-2730 /results/ts-10GB-12-3-2730

real	4m20.141s
user	0m8.700s
sys	0m0.376s
+ set +x
Deleted /results/tg-10GB-12-3-2730
Deleted /results/ts-10GB-12-3-2730

Testing case
Mappers 12
Reducers 6
Container Memory 512
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=12 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 107374182 /results/tg-10GB-12-6-512

real	2m58.010s
user	0m6.165s
sys	0m0.270s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=12 -Dmapreduce.job.reduces=6 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 -Dmapreduce.reduce.memory.mb=512 -Dmapreduce.reduce.java.opts.max.heap=409 /results/tg-10GB-12-6-512 /results/ts-10GB-12-6-512

real	3m45.241s
user	0m8.025s
sys	0m0.296s
+ set +x
Deleted /results/tg-10GB-12-6-512
Deleted /results/ts-10GB-12-6-512

Testing case
Mappers 12
Reducers 6
Container Memory 1024
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=12 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 107374182 /results/tg-10GB-12-6-1024

real	2m52.658s
user	0m6.115s
sys	0m0.278s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=12 -Dmapreduce.job.reduces=6 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 /results/tg-10GB-12-6-1024 /results/ts-10GB-12-6-1024

real	3m51.471s
user	0m8.457s
sys	0m0.367s
+ set +x
Deleted /results/tg-10GB-12-6-1024
Deleted /results/ts-10GB-12-6-1024

Testing case
Mappers 12
Reducers 6
Container Memory 2048
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=12 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 107374182 /results/tg-10GB-12-6-2048

real	3m2.605s
user	0m6.555s
sys	0m0.292s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=12 -Dmapreduce.job.reduces=6 -Dmapreduce.map.memory.mb=2048 -Dmapreduce.map.java.opts.max.heap=1638 -Dmapreduce.reduce.memory.mb=2048 -Dmapreduce.reduce.java.opts.max.heap=1638 /results/tg-10GB-12-6-2048 /results/ts-10GB-12-6-2048

real	3m40.412s
user	0m8.258s
sys	0m0.318s
+ set +x
Deleted /results/tg-10GB-12-6-2048
Deleted /results/ts-10GB-12-6-2048

Testing case
Mappers 12
Reducers 6
Container Memory 2730
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=12 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 107374182 /results/tg-10GB-12-6-2730

real	3m6.330s
user	0m6.322s
sys	0m0.269s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=12 -Dmapreduce.job.reduces=6 -Dmapreduce.map.memory.mb=2730 -Dmapreduce.map.java.opts.max.heap=2184 -Dmapreduce.reduce.memory.mb=2730 -Dmapreduce.reduce.java.opts.max.heap=2184 /results/tg-10GB-12-6-2730 /results/ts-10GB-12-6-2730

real	4m5.731s
user	0m8.180s
sys	0m0.372s
+ set +x
Deleted /results/tg-10GB-12-6-2730
Deleted /results/ts-10GB-12-6-2730

Testing case
Mappers 12
Reducers 8
Container Memory 512
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=12 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 107374182 /results/tg-10GB-12-8-512

real	3m14.090s
user	0m6.220s
sys	0m0.270s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=12 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=512 -Dmapreduce.map.java.opts.max.heap=409 -Dmapreduce.reduce.memory.mb=512 -Dmapreduce.reduce.java.opts.max.heap=409 /results/tg-10GB-12-8-512 /results/ts-10GB-12-8-512

real	3m49.551s
user	0m8.237s
sys	0m0.331s
+ set +x
Deleted /results/tg-10GB-12-8-512
Deleted /results/ts-10GB-12-8-512

Testing case
Mappers 12
Reducers 8
Container Memory 1024
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen -Dmapreduce.job.maps=12 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 107374182 /results/tg-10GB-12-8-1024

real	3m1.065s
user	0m6.138s
sys	0m0.297s
+ /opt/cloudera/parcels/CDH/bin/hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar terasort -Dmapreduce.job.maps=12 -Dmapreduce.job.reduces=8 -Dmapreduce.map.memory.mb=1024 -Dmapreduce.map.java.opts.max.heap=819 -Dmapreduce.reduce.memory.mb=1024 -Dmapreduce.reduce.java.opts.max.heap=819 /results/tg-10GB-12-8-1024 /results/ts-10GB-12-8-1024

real	3m39.703s
user	0m8.051s
sys	0m0.334s
+ set +x
Deleted /results/tg-10GB-12-8-1024
Deleted /results/ts-10GB-12-8-1024

</pre></code></div>
