import subprocess
HOME_PATH=""
args = [

]

HDFS_KEYTAB_PATH = "/Users/luna/etc/hadoop.keytab"
HDFS_PRINCIPAL = "hdfs/eng-cdh1@DTSTACK.COM"
subprocess.run(["kinit",  "-kt", HDFS_KEYTAB_PATH, HDFS_PRINCIPAL])
subprocess.run(["ls", "-l"])
# subprocess.run(["kdestory"])

