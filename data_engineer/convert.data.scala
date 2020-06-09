// 処理開始
import org.apache.spark.sql.types._

//テーブル構成を定義
val schema = (new StructType).add("auctionid", StringType).add("bid", FloatType).add("bidtime", FloatType).add("bidder", StringType).add("bidderrate", IntegerType).add("openbid", FloatType).add("price", FloatType)

// RAWデータを読み込み
val input_df = spark.read.option("Sep", ",").schema(schema).csv("/tmp/01_data_ingest_demo/")

// ランダムに５行をConsoleに出力して動作確認
input_df.show(5)

// データを変換して、別のフォルダに出力して保存
input_df.write.mode("overwrite").option("compression", "snappy").parquet("/tmp/02_dataEngineer_demo/")
// 処理完了