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
