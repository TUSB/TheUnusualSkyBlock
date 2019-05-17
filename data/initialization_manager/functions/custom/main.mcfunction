##############################
### カスタムエンティティ初期化
##############################

### タイプ判定(モブ)
execute if entity @s[team=] run function initialization_manager:custom/check_attriute

### グループ判定
function initialization_manager:custom/check_group
