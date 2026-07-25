#> skill:act/white_mage/araise/raised
#
# レイズリスポーン発動

# AnywhereTeleportの代替処理を使用
# # この後座標は移動後のものにするので、今後は全て at @s
data modify storage anywhere: at set from storage tusb_player: Raise
data modify storage anywhere: function set value "skill:act/hunter/radar_vision/return1"
function #anywhere:run

# 復活酔いを付与
execute at @s run function effect:player_debuff/revival_sickness/apply

# 演出用エンティティを削除
execute at @s run kill @e[tag=RaisePoint,limit=1,sort=nearest]

# 演出
execute at @s run function makeup:skill/act/white_mage/araise/raised
