import happybase

connection = happybase.Connection('kudu1')

table = connection.table('wuren_foo')

row = table.row(b'0_n')
print(row)  # prints 'value1'

# print(row[b'cf0:ct'])  # prints 'value1'

# for key, data in table.rows([b'row-key-1', b'row-key-2']):
#     print(key, data)  # prints row key and data for each row

# for key, data in table.scan(row_prefix=b'row'):
#     print(key, data)  # prints 'value1' and 'value2'