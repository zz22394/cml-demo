CREATE EXTERNAL TABLE IF NOT EXISTS ebay_auc(
    auctionid  String,
    bid  Float,
    bidtime  Float,
    bidder  String,
    bidderrate  Integer,
    openbid  Float,
    price  Float
)
COMMENT 'Ebay Auc Data'
STORED AS PARQUET
LOCATION '/tmp/02_dataEngineer_demo/';