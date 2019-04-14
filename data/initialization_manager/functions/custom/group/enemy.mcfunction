##############################
### モンスター初期化
##############################

### データ管理初期化
execute if entity @s[tag=!Colony,tag=!Pet] run function initialization_manager:data_management/enemy/initialize

### HP管理初期化
function initialization_manager:health_management/initialize

### チーム設定
team join Enemy @s

### タグ設定

