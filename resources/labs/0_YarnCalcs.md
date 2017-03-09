
# Yarn Doing the Math

Suppose you have a cluster with ten worker nodes. Each worker node has:

    Twenty vcores
    128 GB RAM
    Twelve disks for DataNode use


## 1. Explain any adjustments you make
> What criteria affects workload factor? What does a value of 1, 2, or 4 signify?

Considering we have cluster for MRv2 and Spark jobs as hypothetic case.
Where it has to be shared between different users and workloads.

The 2 factorof workload seems increse the resource usage, which it could be quite often for shared 10 node cluster and jobs involving spark and MR.

### (Changed) OS

* (Changed OS Memory 12.8GB => 5GB
I'm considering the minimal of 3~4Gb until 20% of the node.
Spark Jobs can demand more memory for caching persistence.
We also can release more for HDS caching.

* (Changed) OS VCores 2 => 1
Releasing 1 more core for Node Managers to increase the parallelism


### 2. (Accepted) VCores for Service/Daemons

* (Accepted) NodeManager VCores 1
High concurrent job submissions demands fast answer from ResourceManager and NodeManagers

* (Accepted) DataNode VCores 1
High demand to access the HDFS between different

* (Accepted) CM Agent VCores 1
Logging report and monitoring are important for a shared cluster.

### 3. (Changed) DataNode Memory 1GB => 4GB
Increase for HDFS caching, fast reads in shared datasets

* (Accepted) Yarn Node Manager VCores 16 and Memory 120832 MB
Calculated with the maximum available as possible

### 3. (Changed) YARM RM Properties

* (Changed) formula of yarn.scheduler.maximum-allocation-mb
It should allocate at until `yarn.nodemanager.resource.memory-mb` 120832
Considering at maximum available for night or weekend jobs

### 4. (Accepted) Task Container Settings

* (Accepted) mapreduce.map.memory.mb 1024 and 80% for java heap size
As a minimum, make the cluster more possible to share
But the maximum amount could be 4Gb

* (Accepted) mapreduce.reduce.memory.mb 1024 and 80% for java heap size
As a minimum, make the cluster more possible to share
But the maximum amount could be 4Gb


### 5. (Changed) Gateway Settings
Giving the same values of the Container setting and allowing to be increased based on the job features

* (Changed) -D mapreduce.map.memory.mb  2048 => 1024
Allowed to increase until 4G

* (Changed) -D mapreduce.reduce.memory.mb  2048 => 1024
Allowed to increase until 4G

* (Accepted) The java heap size calculations 80%

* (Accepted) Maximum job and reducers tasks
Enabled to use whole cluster if it's available or queuing the tasks.
