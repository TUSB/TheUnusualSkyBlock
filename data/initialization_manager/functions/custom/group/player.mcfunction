##############################
### プレイヤー初期化
##############################

### データ管理初期化
function data_manager:initializer/player/initialize

### チーム設定
team join Friendly @s

### タグ設定
tag @s add Player
tag @s add Friendly
