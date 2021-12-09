# 生成票据
kinit -kt hdfs.keytab hdfs/cdh01@FOO.COM
kinit -kt
# 查看票据缓存
klist -e
# 刷新
kinit -R

export dirname=/var/run/cloudera-scm-agent/process/

find $dirname -not -empty `-ls -l` | grep keytab

klist -e -k -t

#合并keytab
ktutil: rkt user1.keytab

ktutil: rkt user1.keytab

ktutil: wkt user.keytab

jdbc:hive2://krb02.k.com:10000/;principal=hive/krb02.k.com@K.COM


kadmin.local -q "xst -norandkey -k hdfs1.keytab hdfs/eng-cdh1@DTSTACK.COM"
kadmin.local -q "xst -norandkey -k hive3.keytab hive/eng-cdh3@DTSTACK.COM"
kadmin.local -q "xst -norandkey -k http.keytab HTTP/eng-cdh1@DTSTACK.COM"
