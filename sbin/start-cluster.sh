
# kerberos 
./start-thriftserver.sh 
  --hiveconf hive.server2.authentication.kerberos.principal=hive/eng-cdh3@DTSTACK.COM \
  --hiveconf hive.server2.authentication.kerberos.keytab=hive-cdh03.keytab \
  --hiveconf hive.server2.thrift.port=10001 \
  --hiveconf hive.server2.thrift.bind.host=0.0.0.0 \
  --principal hive/eng-cdh3@DTSTACK.COM --keytab hive-cdh03.keytab


