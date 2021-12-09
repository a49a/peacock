from prometheus_client import Counter, Gauge ,CollectorRegistry, push_to_gateway
import time

registry = CollectorRegistry()

c = Counter('luna_counter', 'luna memory test', ['label_foo'], registry=registry)
g = Gauge('luna_foo', 'luna memory test', registry=registry)
g.set_to_current_time()

while(True):

    c.labels(label_foo='new').inc()
    time.sleep(0.04)
    print(time.ctime())
    push_to_gateway('localhost:9091', job='luna_python_foo', registry=registry)




