bash submit.sh
    -mode yarnPer
    -name wuren_test
    -sql /Users/luna/src/frigate/sql/base.sql
    -localSqlPluginPath /Users/luna/src/dtstack/flinkStreamSQL/plugins
    -flinkconf /Users/luna/opt/flink-1.8.1/conf
    -yarnconf /Users/luna/opt/hadoop/etc/hadoop
    -flinkJarPath /Users/luna/opt/flink-1.8.1/lib
    -pluginLoadMode shipfile
    -confProp {\"sql.checkpoint.cleanup.mode\":\"false\",\"job.priority\":\"10\",\"time.characteristic\":\"EventTime\",\"slots\":\"1\",\"sql.checkpoint.interval\":\"60000\",\"sql.env.parallelism\":\"1\"}
    -queue c

./submit.sh \
-name wuren_test \
-mode yarn \
-sql /Users/luna/src/frigate/sql/krb/auth.sql \
-localSqlPluginPath /Users/luna/src/dtstack/flinkStreamSQL/sqlplugins \
-flinkconf /Users/luna/opt/flink-1.10.1/conf \
-yarnconf /Users/luna/etc/cdh/etc \
-flinkJarPath /Users/luna/opt/flink-1.10.1/lib \
-pluginLoadMode shipfile \
-confProp {\"sql.checkpoint.cleanup.mode\":\"true\"} \
-queue default \
-yarnSessionConf {\"yid\":\"application_1599444962934_0013\"}

-mode
local
-name
local_test
-sql
/Users/luna/src/frigate/sql/feat/join.sql
-localSqlPluginPath
/Users/luna/src/dtstack/flinkStreamSQL/plugins

submit.sh
  -mode yarnPer 
  -sql /home/wen/Desktop/flink_stream_sql_conf/sql/Test01.sql
  -name TestAll
  -localSqlPluginPath /home/wen/IdeaProjects/flinkStreamSQL/plugins
  -remoteSqlPluginPath /home/wen/IdeaProjects/flinkStreamSQL/plugins
  -flinkconf /home/wen/Desktop/flink_stream_sql_conf/flinkConf
  -yarnconf /home/wen/Desktop/flink_stream_sql_conf/yarnConf_node1
  -flinkJarPath /home/wen/Desktop/dtstack/flink-1.8.1/lib
  -pluginLoadMode shipfile
  -confProp {\"time.characteristic\":\"eventTime\",\"logLevel\":\"info\"}
  -queue c


  ./yarn-session.sh -d -n 1 -s 2 -jm 1024 -tm 1024 --ship /Users/luna/src/dtstack/flinkStreamSQL/sqlplugins

  ./yarn-session.sh -d -n 1 -s 2 -jm 1024 -tm 1024 --ship /Users/luna/src/dtstack/flinkx/syncplugins
  
  bin/yarn-session.sh -d -n 1 -s 1 -jm 1024 -tm 1024 -qu c
bin/flink run -d -m yarn-cluster -p 1 -yid application_1607064457564_24076 /Users/luna/src/me/yanri/target/me.yanri-jar-with-dependencies.jar
   bin/flink run -d -m yarn-cluster -p 1 -yid application_1607064457564_24076 -c com.dtstack.engine.flink.check.FlinkSessionCheck /Users/luna/src/dtstack/DAGScheduleX/pluginLibs/flinkcommon/dt-flink-check.jar hdfs://ns1/flink-checkpoint

   bin/flinkx -mode yarn \
           -job /Users/luna/src/frigate/json/auth.json \
           -pluginRoot /Users/luna/src/dtstack/flinkx/syncplugins \
           -flinkconf /Users/luna/opt/flink-1.10.1/conf \
           -yarnconf /Users/luna/etc/cdh/hadoop/conf \
           -appId application_1599444962934_0040 \
           -confProp "{\"flink.checkpoint.interval\":60000}"


-mode
yarnPar
-job
/Users/luna/src/frigate/json/auth.json
-pluginRoot
/Users/luna/src/dtstack/flinkx/syncplugins
-flinkconf
/Users/luna/opt/flink-1.10.1/conf
-yarnconf
/Users/luna/etc/cdh/hadoop/conf
-confProp
"{\"flink.checkpoint.interval\":60000} -pluginLoadMode shipfile
-queue
root.users.hdfs


bin/spark-submit --class me.frigate.spark21.SqlRunner \
    --master local[2] \
    --deploy-mode cluster \
    --driver-memory 4g \
    --executor-memory 2g \
    --executor-cores 1 \
    lib/spark-examples*.jar 


bin/spark-submit \
    --class me.frigate.spark21.SqlRunner \
    --master local[2] \
    --driver-memory 1g \
    --executor-memory 1g \
    --executor-cores 1 \
    /Users/luna/src/frigate/spark_2_1/target/spark_2_1-1.0-SNAPSHOT.jar 

bin/spark-submit \
    --class me.frigate.spark21.SqlRunner \
    --jars /Users/luna/src/frigate/hive/target/hive-1.0-SNAPSHOT.jar \
    --master yarn \
    --driver-memory 1g \
    --executor-memory 1g \
    --executor-cores 1 \
    /Users/luna/src/frigate/spark_2_1/target/spark_2_1-1.0-SNAPSHOT.jar 
    
bin/spark-submit \
    --class me.frigate.spark21.SqlRunner \
    --jars /data/wuren/hive-1.0-SNAPSHOT.jar \
    --master local \
    --driver-memory 1g \
    --executor-memory 1g \
    --executor-cores 1 \
    /data/wuren/spark_2_1-1.0-SNAPSHOT.jar 

./start-thriftserver.sh --master local --conf spark.driver.memory=1G --class org.apache.spark.sql.hive.thriftserver.HiveThriftServer2 --name  --executor-memory 1G --num-executors 2 --name ThriftServer01