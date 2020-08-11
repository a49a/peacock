import redis

r = redis.Redis(host='localhost', port=6379, db=0)
r.hmset('r_2_n', {
    'ct': 'bar_r'
})
r.hset(
    'r_1_n',
    'ct',
    'foo_r'
)

r.hmset('2', {
    'ct': 'slink_niubi'
})