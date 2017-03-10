
# Challenge 4 - HDFS Testing - Teragen

65536000


hadoop jar /opt/cloudera/parcels/CDH/jars/hadoop-examples.jar teragen \
  -dfs.blocksize=16777216
  -Dmapreduce.job.maps=$i \
  -Dmapreduce.map.memory.mb=$k \
  -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
  65536000
