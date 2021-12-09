
# kerberos 
./start-thriftserver.sh \
  --master local \
  --conf spark.driver.memory=1G\
  --executor-memory 1G \
  --num-executors 1 \
  --hiveconf hive.server2.authentication.kerberos.principal=hive/eng-cdh3@DTSTACK.COM \
  --hiveconf hive.server2.authentication.kerberos.keytab=hive-cdh03.keytab \
  --hiveconf hive.server2.thrift.port=10000 \
  --hiveconf hive.server2.thrift.bind.host=eng-cdh3 \
  --hiveconf fs.hdfs.impl.disable.cache=true \
  --hiveconf hive.exec.stagingdir=/tmp/hive/spark-staging \
  --principal hive/eng-cdh3@DTSTACK.COM --keytab hive-cdh03.keytab

vim /etc/spark/conf/classpath.txt

/opt/cloudera/parcels/CDH-5.16.2-1.cdh5.16.2.p0.8/jars/spark-lineage_2.10-1.6.0-cdh5.16.2.

./start-thriftserver.sh   --master local   --conf spark.driver.memory=1G   --executor-memory 1G   --num-executors 1   --hiveconf hive.server2.authentication.kerberos.principal=hive/eng-cdh3@DTSTACK.COM   --hiveconf hive.server2.authentication.kerberos.keytab=hive.keytab   --hiveconf hive.server2.thrift.port=10000   --hiveconf hive.server2.thrift.bind.host=eng-cdh3   --principal hive/eng-cdh3@DTSTACK.COM --keytab hive.keytab


./start-thriftserver.sh --master local --conf spark.driver.memory=1G --class org.apache.spark.sql.hive.thriftserver.HiveThriftServer2 --name  --executor-memory 1G --num-executors 2 --name ThriftServer01

sbin/start-thriftserver.sh --master yarn --conf spark.driver.memory=2G --class org.apache.spark.sql.hive.thriftserver.HiveThriftServer2 --name Thrift JDBC/ODBC Server --name Thrift --executor-memory 1G --num-executors 2 --name ThriftServer01 spark-internal JDBC/ODBC Server spark-internal --queue c

SELECT `id`, CAST(`nu` AS DECIMAL(21, 18)) FROM dec_test WHERE `id`= ?