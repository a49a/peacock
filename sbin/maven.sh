# 跳过测试
mvn clean package -Dmaven.test.skip=true 

mvn clean install -T 1C -DskipTests -Dfast
