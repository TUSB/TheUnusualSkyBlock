
### ルーラ ワープ
# ワープ処理はAnywhereTeleportを利用する

function #oh_my_dat:please
data remove storage anywhere: at
data modify storage anywhere: at set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HomePoint
execute unless data storage anywhere: at run data modify storage anywhere: at set from storage skill: ReturnDefault

# この後座標は移動後のものにするので、今後は全て at @s
function #anywhere:tp

execute at @s run function makeup:skill/act/black_mage/return/warp
