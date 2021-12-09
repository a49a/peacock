import pymongo
 
client = pymongo.MongoClient("mongodb://localhost:27017/")
db = client["flink_dev"]
dim_r = db["dim_c"]
 
 
for x in dim_r.find():
    print(x)
