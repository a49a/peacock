nohup hive --skiphbasecp --service hiveserver2 2>&1 >> /var/hive/server2.log &
nohup bin/hive --service metastore & 

nohup bin/hive --service metastore 2>&1 >> /data/dtstack/hive/logs/meta.log &

