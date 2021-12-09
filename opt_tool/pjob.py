import subprocess
HOME_PATH = ""

PLUGIN_PATH = "/Users/luna/src/flinkStreamSQL/plugins"
JOB_NAME = "wuren_foo"
SQL_PATH = "/Users/luna/src/frigate/sql/array.sql"

flink_conf = {
    "sql.checkpoint.cleanup.mode":"false",
    "job.priority":"10",
    "time.characteristic":"EventTime",
    "slots":"1",
    "sql.checkpoint.interval":"60000",
    "sql.env.parallelism":"1"
}

sql_job_args = [
    "bash",
    "submit.sh",
    "-mode",
    "local",
    "-name",
    JOB_NAME,
    "-sql",
    SQL_PATH,
    "-localSqlPluginPath",
    PLUGIN_PATH,
    "-confProp",
    str(flink_conf)
]
  bin/flinkx -mode yarn \
           -job /Users/luna/src/frigate/json/auth.json \
           -pluginRoot /Users/luna/src/dtstack/flinkx/syncplugins \
           -flinkconf /Users/luna/opt/flink-1.10.1/conf \
           -yarnconf /Users/luna/etc/cdh/hadoop/conf \
           -appId application_1599444962934_0040 \
           -confProp "{\"flink.checkpoint.interval\":60000}"

FLINKX_CONF_PATH = "/Users/luna/src/frigate/json/auth.json"
FLINKX_PLUGIN_PATH = "/Users/luna/src/dtstack/flinkx/syncplugins"
FLINK_CONF_PATH = "/Users/luna/opt/flink-1.10.1/conf"
HADOOP_CONF_PATH = "/Users/luna/etc/cdh/hadoop/conf"
APP_ID = "application_1599444962934_0040"

flinkx_job_args = [
    "bash",
    "./flinkx",
    "-mode",
    "yarn",
    "-job",
    FLINKX_CONF_PATH,
    "-pluginRoot",
    FLINKX_PLUGIN_PATH,
    "-flinkconf",
    FLINK_CONF_PATH
    "-appId",
    APP_ID
]

print(str(flink_conf).replace('\'', "\\\""))
subprocess.run(["ls", "-l"])