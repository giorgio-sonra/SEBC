

# Modified Yarn Test

Estimated based on the cluster setup

Updated to current yarn setup

```sh
#!/bin/sh
# 1GB = 2^30
# 1MB = 2^20
# Block Size: 128MB
# Work Nodes: 3
# Teragen size: (10*2^30)/100 ~= 107374182
# Total estimated mappers: (10*2^30)/(128*2^20) = 80
# Total estimated mappers/Node: 80/3 ~= 27
# Max memory/node = 8Gb
# Max vcores/node = 3
# Max Mem/Vcore: 2730Mb

MR=/opt/cloudera/parcels/CDH/jars
HADOOP=/opt/cloudera/parcels/CDH/bin

# Mark start of the loop
echo Testing loop started on `date`

# Mapper containers
for i in 6 8 9 12
do
  # Reducer containers
  for j in 3 6 8 9
  do
    # Container memory
    for k in 512 1024 2048 2730
    do
      # Set mapper JVM heap
      MAP_MB=`echo "($k*0.8)/1" | bc`

      # Set reducer JVM heap
      RED_MB=`echo "($k*0.8)/1" | bc`

      echo ""
      echo "Testing case"
      echo "Mappers $i"
      echo "Reducers $j"
      echo "Container Memory $k"

      # echo on
      set -x

      time ${HADOOP}/hadoop jar ${MR}/hadoop-examples.jar teragen \
        -Dmapreduce.job.maps=$i \
        -Dmapreduce.map.memory.mb=$k \
        -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
        107374182 /results/tg-10GB-${i}-${j}-${k} 1>tera_${i}_${j}_${k}.out 2>tera_${i}_${j}_${k}.err

      time ${HADOOP}/hadoop jar $MR/hadoop-examples.jar terasort \
        -Dmapreduce.job.maps=$i \
        -Dmapreduce.job.reduces=$j \
        -Dmapreduce.map.memory.mb=$k \
        -Dmapreduce.map.java.opts.max.heap=$MAP_MB \
        -Dmapreduce.reduce.memory.mb=$k \
        -Dmapreduce.reduce.java.opts.max.heap=$RED_MB \
        /results/tg-10GB-${i}-${j}-${k}  \
        /results/ts-10GB-${i}-${j}-${k} 1>>tera_${i}_${j}_${k}.out 2>>tera_${i}_${j}_${k}.err

      # echo off
      set +x

      $HADOOP/hdfs dfs -rm -r -skipTrash /results/tg-10GB-${i}-${j}-${k}
      $HADOOP/hdfs dfs -rm -r -skipTrash /results/ts-10GB-${i}-${j}-${k}
    done
  done
done

echo Testing loop ended on `date`
```
