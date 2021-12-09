from datetime import datetime
from elasticsearch import Elasticsearch
es = Elasticsearch({"172.16.100.243":"9200"})

doc = {
    'name': "乙"
}

ID = 0
INDEX = "wuren"
INDEX = "wuren-2021-12-03"

# res = es.delete(index=INDEX, doc_type=DOC_TYPE, id=ID)
# es.indices.create(index=INDEX)
# es.index(index=INDEX, id=ID, body=doc)

# res = es.delete(index=INDEX, doc_type=DOC_TYPE, id=2)
res = es.get(index=INDEX, id=ID)

print(res)

# res = es.get(index=InterruptedError, id=1, doc_type=DOC_TYPE)
# print(res['_source'])

