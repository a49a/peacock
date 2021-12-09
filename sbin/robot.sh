token=c05f9b3657931839f44bd8381ee44e6c7c4596dfbc95e3b1f557cb09b8ec9b33
curl -s "https://oapi.dingtalk.com/robot/send?access_token=${token}" \
    -H "Content-Type: application/json" \
    -d "{
        \"msgtype\": \"markdown\",
        \"markdown\": {
            \"title\":\"喝水提醒\",
            \"text\": \"该喝水了\n\"
        }
    }"