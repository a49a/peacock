HADOOP_CONF_DIR=
FLINK_CONF_DIR=
bin/flink run -m yarn-cluster ./examples/batch/WordCount.jar

beeline -d "com.cloudera.impala.jdbc41.Driver" -u "jdbc:impala://ip-172-31-5-190.fayson.com:21050"