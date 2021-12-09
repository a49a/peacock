from kafka import KafkaConsumer, TopicPartition

TOPIC = "luna_3p"
LOCAL_SERVER = "localhost:9092"

NB_TEST_TOPIC = "testnb"
NB_SERVER = ["master1:9092", "master2:9092", "master3:9092"]
consumer = KafkaConsumer(
    NB_TEST_TOPIC,
    bootstrap_servers = NB_SERVER, # kafka集群地址
    group_id = "mpg", # 消费组id
    enable_auto_commit = True, # 每过一段时间自动提交所有已消费的消息（在迭代时提交）
    auto_commit_interval_ms = 1000, # 自动提交的周期（毫秒）
    security_protocol = 'SASL_PLAINTEXT',
    sasl_mechanism = 'GSSAPI',
)

# consumer.assign([
#     TopicPartition(topic=TOPIC, partition=0),
#     TopicPartition(topic=TOPIC, partition=1),
#     TopicPartition(topic=TOPIC, partition=2)
# ])

for msg in consumer:
    print(msg)