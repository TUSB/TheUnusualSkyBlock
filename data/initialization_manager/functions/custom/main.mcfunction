##############################
### カスタムエンティティ初期化
##############################

### グループ判定
function initialization_manager:custom/check_group

### タイプ判定(モブ)
execute if entity @s[type=minecraft:player,team=] run function initialization_manager:custom/check_attribute
