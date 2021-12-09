package me.peacock;

import org.apache.kudu.ColumnSchema;
import org.apache.kudu.Schema;
import org.apache.kudu.Type;
import org.apache.kudu.client.CreateTableOptions;
import org.apache.kudu.client.KuduClient;
import org.apache.kudu.client.KuduException;

import java.util.ArrayList;
import java.util.List;

/**
 * @program: j_cli
 * @author: wuren
 * @create: 2021/09/10
 **/
public class EntryPoint {
    public static void main(String[] args) {
        KuduClient.KuduClientBuilder builder = new KuduClient.KuduClientBuilder("172.16.100.109:7051");

        KuduClient client = builder.build();
        createTable(client, "dws_wuren");
    }

    public static void createTable(KuduClient client, String tableName) {
        List<ColumnSchema> columns = new ArrayList<>();
        //在添加列时可以指定每一列的压缩格式
        columns.add(new ColumnSchema.ColumnSchemaBuilder("id", Type.INT32).key(true).compressionAlgorithm(ColumnSchema.CompressionAlgorithm.SNAPPY).build());
        columns.add(new ColumnSchema.ColumnSchemaBuilder("name", Type.STRING).key(true).compressionAlgorithm(ColumnSchema.CompressionAlgorithm.SNAPPY).build());

        Schema schema = new Schema(columns);
        CreateTableOptions createTableOptions = new CreateTableOptions();
        List<String> hashKeys = new ArrayList<>();
        hashKeys.add("id");
        int numBuckets = 8;
        createTableOptions.addHashPartitions(hashKeys, numBuckets);

        try {
            if(!client.tableExists(tableName)) {
                client.createTable(tableName, schema, createTableOptions);
            }
            System.out.println("成功创建Kudu表：" + tableName);
        } catch (KuduException e) {
            e.printStackTrace();
        }
    }
}
