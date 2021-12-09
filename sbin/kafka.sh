function create_kafka_topic {
    $KAFKA_DIR/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor $1 --partitions $2 --topic $3
}

function drop_kafka_topic {
    $KAFKA_DIR/bin/kafka-topics.sh --delete --zookeeper localhost:2181 --topic $1
}

bin/kafka-topics.sh --create --topic wuren_foo --replication-factor 1 --partitions 1 --zookeeper kudu1:2181

kafka-console-producer --broker-list eng-cdh1:9092,eng-cdh2:9092 --topic test --producer.config client.properties
bin/kafka-console-producer.sh --broker-list localhost:9092 --topic wuren_foo

kafka-console-consumer --bootstrap-server 172.16.8.107:9092 --topic wuren_foo
kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic luna_foo

bin/kafka-topics.sh --create --topic luna_foo --bootstrap-server localhost:9092
kafka-topics --create --topic luna_foo --replication-factor 1 --partitions 1 --bootstrap-server krb02.k.com:9092

 kafka-console-producer --broker-list krb02.k.com:9092 --topic kerbero --producer.config client.properties

bin/kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic luna_3p
bin/kafka-topics.sh --create --topic luna_3p --replication-factor 1 --partitions 3 --bootstrap-server localhost:9092

bin/kafka-console-consumer.sh --topic dwd_logis_track_act_inventory \
--from-beginning \
--partition 2 \
--bootstrap-server master1:9092,master2:9092,master3:9092 \
--consumer.config config/client.properties \
--max-messages 10

--consumer-property group.id=luna \

bin/kafka-console-consumer.sh --topic dwd_logis_track_act_inventory --from-beginning --bootstrap-server master1:9092,master2:9092,master3:9092  --consumer-property group.id=luna --consumer.config config/client.properties --max-messages 10 --partition 1

bin/kafka-console-consumer.sh --topic testnb--from-beginning --bootstrap-server master1:9092,master2:9092,master3:9092  --consumer-property group.id=luna --consumer.config config/client.properties --max-messages 10 --partition 1

bin/kafka-topics.sh --bootstrap-server localhost:9092 --alter --topic luna_bar --partitions 3

bin/kafka-topics.sh --describe --zookeeper master1:2181,master2:2181,master3:2181 --topic dwd_logis_track_act_inventory

bin/kafka-topics.sh --describe --bootstrap-server master1:9092,master2:9092,master3:9092 --topic dwd_logis_track_act_inventory --command-config config/client.properties

bin/kafka-console-consumer.sh --topic testnb2 \
--from-beginning \
--partition 0 \
--bootstrap-server master1:9092,master2:9092,master3:9092 \
--consumer.config config/client.properties \
--max-messages 4

bin/kafka-console-consumer.sh --topic testnb2 \
--from-beginning \
--partition 1 \
--bootstrap-server master1:9092,master2:9092,master3:9092 \
--consumer.config config/client.properties \
--max-messages 4

bin/kafka-console-consumer.sh --topic testnb 2\
--from-beginning \
--partition 2 \
--bootstrap-server master1:9092,master2:9092,master3:9092 \
--consumer.config config/client.properties \
--max-messages 4

bin/kafka-console-consumer.sh --topic testnb2 \
--from-beginning \
--partition 3 \
--bootstrap-server master1:9092,master2:9092,master3:9092 \
--consumer.config config/client.properties \
--max-messages 10

export JVMFLAGS="-Djava.security.auth.login.config=/Users/luna/etc/nb_port/jaas.conf"


bin/kafka-topics.sh \
--bootstrap-server master1:9092,master2:9092,master3:9092 \
--alter --topic testnb --partitions 4 \
--command-config config/client.properties


bin/kafka-topics.sh --create \
--bootstrap-server master1:9092,master2:9092,master3:9092 \
--replication-factor 3 \
--partitions 3 \
--topic testnb2 \
--command-config config/client.properties

bin/kafka-console-consumer.sh --topic luna_3p \
--from-beginning \
--partition 2 \
--bootstrap-server localhost:9092 \
--max-messages 40


bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group gg