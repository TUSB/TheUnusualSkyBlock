##############################
### モンスター初期化
##############################

### データ管理初期化
function data_manager:initializer/enemy/initialize

### ターゲット設定読み込み
function behaviour_manager:definition_reader/target/check

### HP管理初期化
function health_manager:initializer/initialize

### チーム設定
team join Enemy @s

### タグ設定
