sed -e '/abc/d' foo >
sed -e '/abc/d' foo
sed -e '/RowKeyEqualModeDealer/d' cust_job.log > cleaned.log

# linux
sed -i '/BaseAsyncReqRow/d' cleaned.log
# mac
sed -i '' '/DeserializationMetricWrapper/d' cleaned.log

kadmin.local -q "addprinc -randkey luna@DTSTACK.COM"

kadmin.local -q "xst -norandkey -k luna.keytab luna@DTSTACK.COM"

./trino-cli-351-executable.jar --server localhost:8044 --catalog iceberg --schema luna
