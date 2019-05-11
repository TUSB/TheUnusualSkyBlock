##############################
### プレイヤーペット初期化
##############################

### データ管理初期化
function data_manager:initializer/ally/initialize

### 振舞い設定読み込み
function behaviour_manager:definition_reader/check

### HP管理初期化
function health_manager:initializer/initialize

### チーム設定
team join Friendly @s

### タグ設定
tag @s add Friendly
