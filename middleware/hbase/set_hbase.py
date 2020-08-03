import happybase

connection = happybase.Connection('kudu1')
# connection.create_table('wuren_foo', {"cf0":{}})
table = connection.table('wuren_foo')


table.put(b'0_n', {b'cf0:name': b'foo',
                       b'cf0:ct': b'TEST_hbase'})

# row = table.delete(b'row-key')