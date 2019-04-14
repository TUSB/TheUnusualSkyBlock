##############################
### アライアンス初期化
##############################

### データ管理初期化
execute if entity @s[tag=!Colony,tag=!Pet] run function initialization_manager:data_management/ally/initialize

### HP管理初期化
function initialization_manager:health_management/initialize

### チーム設定
team join Friendly @s

### タグ設定
tag @s add Friendly
