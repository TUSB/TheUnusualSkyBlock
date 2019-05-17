##############################
### アライアンス初期化
##############################

### データ管理初期化
function data_manager:initializer/ally/initialize

### ターゲット設定読み込み
function behaviour_manager:definition_reader/target/check

### ステータス設定読み込み
function status_manager:definition_reader/check

### チーム設定
team join Ally @s
