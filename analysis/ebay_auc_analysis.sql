use default;

-- ランダムで５件データを抽出
select * from ebay_auc limit 5;

-- 入札者毎の合計金額を統計し、チャートを作る
select sum(price),bidder from ebay_auc group by bidder;

-- 高額な買い物（２００ドル）以上の買い物をした落札者の統計
select sum(price),bidder from ebay_auc where price > 200 group by bidder;