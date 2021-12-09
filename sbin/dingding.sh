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
token=c05f9b3657931839f44bd8381ee44e6c7c4596dfbc95e3b1f557cb09b8ec9b33
curl -s "https://oapi.dingtalk.com/robot/send?access_token=${token}" \
  -H "Content-Type: application/json" \
   -d "{
     \"msgtype\": \"markdown\",
     \"markdown\": {
         \"title\":\"喝水提醒\",
         \"text\": \"该喝水了
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

 !connect jdbc:hive2://kudu1:10000/default
  !connect jdbc:hive2://kudu3:10000/default
  !connect jdbc:hive2://eng-cdh3:10000/default

 !connect jdbc:hive2://kudu1:10004/default

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

CREATE FUNCTION HUPPER
AS 'me.frigate.hive.udf.Upper' 
USING JAR 'hdfs://ns1/jars/hive-1.0-SNAPSHOT.jar';

CREATE OR REPLACE FUNCTION BAR
AS 'me.frigate.hive.udf.FooUdf'
USING JAR 'hdfs://ns1/jars/hive-1.0-SNAPSHOT.jar';

CREATE TEMPORARY FUNCTION BBB
AS 'me.frigate.hive.udf.FooUdf';
SELECT HUPPER(name) FROM w_ods;

DROP FUNCTION BAR;
CREATE FUNCTION BAR
AS 'me.frigate.hive.udf.Upper' 
USING JAR 'hdfs://ns1/jars/hive-1.0-SNAPSHOT.jar';

DROP FUNCTION HUPPER;
DROP FUNCTION EUPPER;
 !connect jdbc:hive2://kerberos03:10000/default
 !connect jdbc:hive2://kudu1:10004/default
  !connect jdbc:hive2://kudu3:10000/default

./start-thriftserver.sh --master local --conf spark.driver.memory=1G --class org.apache.spark.sql.hive.thriftserver.HiveThriftServer2 --name  --executor-memory 1G --num-executors 2 --name ThriftServer01

./zkCli.sh -timeout 0 -r -server eng-cdh1:2181


./start-thriftserver.sh --master local --conf spark.driver.memory=1G --class org.apache.spark.sql.hive.thriftserver.HiveThriftServer2 --name  --executor-memory 1G --num-executors 2 --name ThriftServer246

SELECT EUPPER(name) FROM w_ods;

 tar -zxf jdk-8u181-linux-x64.tar.gz 
  tar -zxf /data/archive/jdk-8u181-linux-x64.tar.gz -C /usr/java/


  CREATE TABLE wuren_i (
    id INT,
    name STRING
  )


   ipa-getkeytab -p impala/krb03.k.com -k i.keytab -s krb01.k.com
ipa-getkeytab -s $IPASERVER -p $PRINC -k $DEST -e rc4-hmac,aes256-cts,aes128-cts
default_tkt_enctypes = aes256-cts aes128-cts rc4-hmac
default_tgs_enctypes = aes256-cts aes128-cts rc4-hmac
permitted_enctypes = aes256-cts aes128-cts rc4-hmac

git log --author="wuren" --pretty=tformat: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "added lines: %s, removed lines: %s, total lines: %s\n", add, subs, loc }' -
