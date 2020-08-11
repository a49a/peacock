#!/bin/bash
#参考钉钉文档 https://open-doc.dingtalk.com/microapp/serverapi2/qf2nxq
token=5
sonarreport=$(curl -s http://foo)
curl -s "https://oapi.dingtalk.com/robot/send?access_token=${token}" \
   -H "Content-Type: application/json" \
   -d "{
     \"msgtype\": \"markdown\",
     \"markdown\": {
         \"title\":\"foo\",
         \"text\": \"## foo: \n
          \n\"
     }
 }"

kdb5_util create -r DTSTACK.COM -s

kadmin.local -q "addprinc spark"

kadmin.local 
addprinc -randkey hive/eng-cdh3@DTSTACK.COM
xst -norandkey -k hive-cdh03.keytab hive/eng-cdh3@DTSTACK.COM


CREATE TEMPORARY FUNCTION UPPER AS 'me.frigate.hive.udf.Upper';
DELETE JAR /data/batch_udf_jars/hive-1.0-SNAPSHOT.jar;

 !connect jdbc:hive2://kudu3:10000/default


CREATE FUNCTION HUPPER 
AS 'me.frigate.hive.udf.Upper' 
USING JAR 'hdfs://ns1/jars/hive-1.0.jar';

DROP FUNCTION MUUPPER;
DROP FUNCTION JUPPER;



CREATE FUNCTION HUPPER 
AS 'me.frigate.hive.udf.MyUpper' 
USING JAR 'hdfs://ns1/jars/hive-udf-mu.jar';

CREATE FUNCTION MUUPPER 
AS 'me.frigate.hive.udf.MyUpper' 
USING JAR 'hdfs://ns1/jars/hive-udf-mu.jar';

CREATE FUNCTION EUPPER 
AS 'me.frigate.hive.udf.Upper' 
USING JAR 'hdfs://ns1/jars/hive-udf-e.jar';

CREATE FUNCTION EUPPER 
AS 'me.frigate.hive.udf.Upper' 
USING JAR 'hdfs://ns1/jars/hive-1.0-SNAPSHOT.jar';

CREATE FUNCTION HUPPER
AS 'me.frigate.hive.udf.Upper' 
USING JAR 'hdfs://ns1/jars/hive-udf-h.jar';

DROP FUNCTION HUPPER;
DROP FUNCTION EUPPER;

./start-thriftserver.sh --master local --conf spark.driver.memory=1G --class org.apache.spark.sql.hive.thriftserver.HiveThriftServer2 --name  --executor-memory 1G --num-executors 2 --name ThriftServer01

./zkCli.sh -timeout 0 -r -server eng-cdh1:2181
 !connect jdbc:hive2://kerberos03:10000/default


 beeline jdbc:hive2://kerberos03:10000/default
./start-thriftserver.sh --master local --conf spark.driver.memory=1G --class org.apache.spark.sql.hive.thriftserver.HiveThriftServer2 --name  --executor-memory 1G --num-executors 2 --name ThriftServer246

SELECT EUPPER(name) FROM w_ods;