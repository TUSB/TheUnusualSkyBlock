##############################
### アライアンス初期化
##############################

### データ管理初期化
execute if entity @s[tag=!Colony,tag=!Pet] run function data_manager:initializer/ally/initialize

### HP管理初期化
function health_manager:initializer/initialize

### チーム設定
team join Friendly @s

### タグ設定
tag @s add Friendly
