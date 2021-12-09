import redis

r = redis.Redis(host='localhost', port=6379, db=0)

output = r.hgetall('r_2_n')
print(output)
