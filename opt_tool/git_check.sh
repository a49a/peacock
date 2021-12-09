# 统计贡献代码量
name=wuren
git log --format='%aN' | sort -u | while read name; do echo -en "$name\t"; git log --author="$name" --pretty=tformat: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "added lines: %s, removed lines: %s, total lines: %s\n", add, subs, loc }' -; done


git log --author="wuren" --pretty=tformat: --numstat | awk '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "added lines: %s, removed lines: %s, total lines: %s\n", add, subs, loc }' -



 mvn deploy:deploy-file -DgroupId=org.apache.hive -DartifactId=hive-streaming -Dversion=3.1.3000.7.1.3.0-100 -Dpackaging=jar -Dfile=/Users/luna/Downloads/hive-streaming-3.1.3000.7.1.3.0-100.jar -Durl=http://nexus.dev.dtstack.cn/nexus/content/repositories/dtstack-release -DrepositoryId=dtstack-release