import happybase

connection = happybase.Connection('kudu1')
# connection.create_table('wuren_foo', {"cf0":{}})
table = connection.table('wuren_foo')


table.put(b'2_k', {b'cf0:name': b'bar',
                       b'cf0:ct': b'TEST_h3'})

# row = table.delete(b'row-key')