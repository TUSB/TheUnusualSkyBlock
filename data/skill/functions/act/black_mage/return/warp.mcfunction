
### ルーラ ワープ
# ワープ処理はレイズを利用する

function oh_my_dat:please
data remove storage tusb_player: Raise
data modify storage tusb_player: Raise set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].HomePoint
execute unless data storage tusb_player: Raise run data modify storage tusb_player: Raise set from storage skill: ReturnDefault

#---#
tag @s add Raising

# ワープ先tpエンティティ召喚
summon marker ~ ~ ~ {Tags:[RaiseTP]}

# ワープ先tp
# 非読み込みチャンク内では @s で呼び出す。
execute as @e[tag=RaiseTP] run function skill:act/white_mage/araise/raise_tp_pos

# ディメンション移動
# この後座標は移動後のものにするので、今後は全て at @s
execute at @s run function skill:act/white_mage/araise/raise_tp_dimension

#タグ削除
tag @s remove Raising
#--#E

function makeup:skill/act/black_mage/return/warp
