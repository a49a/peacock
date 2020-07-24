#!/bin/bash
#参考钉钉文档 https://open-doc.dingtalk.com/microapp/serverapi2/qf2nxq
token=5
sonarreport=$(curl -s http://foo)
curl -s "https://oapi.dingtalk.com/robot/send?access_token=${token}" \
   -H "Content-Type: application/json" \
   -d "{
     \"msgtype\": \"markdown\",
     \"markdown\": {
         \"title\":\"foo\",
         \"text\": \"## foo: \n
          \n\"
     }
 }"

kdb5_util create -r DTSTACK.COM -s

kadmin.local -q "addprinc spark"

kadmin.local 
addprinc -randkey hive/eng-cdh3@DTSTACK.COM
xst -norandkey -k hive-cdh03.keytab hive/eng-cdh3@DTSTACK.COM
