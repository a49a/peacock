from kafka import KafkaProducer
import json
import time
from decimal import *
def serializer(v):
    return json.dumps(v).encode('utf-8')

LOCAL_SERVERS = "localhost:9092"
LOCAL_TOPIC = "luna"

DEV_SERVERS = "172.16.100.109:9092"
DEV_TOPIC = "wangchuan_41"

TEST_SERVER = "172.16.23.236:9092"
TEST_TOPIC = "dtstream_test_two"

FOO_SERVER = "172.16.100.109:9092"
FOO_TOPIC = "ada11"

SERVERS = FOO_SERVER
TOPIC = FOO_TOPIC

producer = KafkaProducer(bootstrap_servers=SERVERS, value_serializer=serializer)
producer2 = KafkaProducer(bootstrap_servers=SERVERS)

foo_time = "2018-09-17 10:00:06"
UTC_FORMAT = "%Y-%m-%dT%H:%M:%S.%fZ"

for x in range(1):
    d = {
        "id": x,
        "name": "111"
        # "some_users": [
        #     {
        #         "user_no": 1,
        #         "user_info": {"a": 1}
        #     },
        #     {
        #         "user_no": 2,
        #         "user_info": {"a": 4}
        #     }
        # ]
        # "name" : str(x)
        # "f1": 1,
        # "f2": 'hh',
        # "f3": x
        # "name": "foo"
        # "name": "iceberg_yes"
        # "val_int": 1,
        # "val_long": 4,
        # "val_double": 8.2,
        # "val_decimal": 199.99,
        # "_id": str(x),
        # "val_str": "hhh",
        # "val_bindata": "qqq",
        # "val_date": "2018-09-17",
        # "val_timestamp": "2012-09-17 10:00:06",
        # "val_bool": True
    }
    print(serializer(d))
    producer.send(TOPIC, d)
    # time.sleep(0.02)
    # producer2.send(TOPIC, bytes("hello world hello ada", encoding = "utf8"))

producer.flush()


