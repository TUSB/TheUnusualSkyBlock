
### レイズリスポーン発動


# AnywhereTeleportを使用
# # この後座標は移動後のものにするので、今後は全て at @s
data modify storage anywhere: at set from storage tusb_player: Raise
function #anywhere:tp

execute at @s run kill @e[tag=RaisePoint,limit=1,sort=nearest]

execute at @s run function makeup:skill/act/white_mage/araise/raised
