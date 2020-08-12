from datetime import datetime
from elasticsearch6 import Elasticsearch
es = Elasticsearch()

doc = {
    'id': 0,
    'name': 'foo'
}
ID = 1
INDEX = "foo_index"
DOC_TYPE = "foo_type"
res = es.delete(index=INDEX, doc_type=DOC_TYPE, id=ID)
es.create(index=INDEX, doc_type=DOC_TYPE, id=ID, body=doc)

# res = es.delete(index=INDEX, doc_type=DOC_TYPE, id=2)
res = es.get(index=INDEX, doc_type=DOC_TYPE, id=ID)

print(res)

# res = es.get(index=InterruptedError, id=1, doc_type=DOC_TYPE)
# print(res['_source'])


