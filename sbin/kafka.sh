function create_kafka_topic {
    $KAFKA_DIR/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor $1 --partitions $2 --topic $3
}

function drop_kafka_topic {
    $KAFKA_DIR/bin/kafka-topics.sh --delete --zookeeper localhost:2181 --topic $1
}