from kafka import KafkaProducer
import json

def serializer(v):
    return json.dumps(v).encode('utf-8')

SERVERS = "localhost:9092"
TOPIC = "wuren_foo"

producer = KafkaProducer(bootstrap_servers=SERVERS, value_serializer=serializer)
for x in range(2):
    d = {
        "id": x,
        "name": "test"
    }
    producer.send(TOPIC, d)
producer.flush()
