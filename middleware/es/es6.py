from datetime import datetime
from elasticsearch6 import Elasticsearch
es = Elasticsearch({"172.16.100.186":"9200"})

doc = {
    'id': 2,
    'name': "乙"
}
ID = 2
INDEX = "wuren"
DOC_TYPE = "cn"
# res = es.delete(index=INDEX, doc_type=DOC_TYPE, id=ID)
es.create(index=INDEX, doc_type=DOC_TYPE, id=ID, body=doc)

# res = es.delete(index=INDEX, doc_type=DOC_TYPE, id=2)
res = es.get(index=INDEX, doc_type=DOC_TYPE, id=ID)

print(res)

# res = es.get(index=InterruptedError, id=1, doc_type=DOC_TYPE)
# print(res['_source'])
