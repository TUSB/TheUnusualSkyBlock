
### レイズリスポーン発動

tag @s add Raising

# 蘇生先tpエンティティ召喚
summon marker ~ ~ ~ {Tags:[RaiseTP]}

# 蘇生先tp
# 非読み込みチャンク内では @s で呼び出す。
execute as @e[tag=RaiseTP] run function skill:act/white_mage/araise/raise_tp_pos

# ディメンション移動
# この後座標は移動後のものにするので、今後は全て at @s
execute at @s run function skill:act/white_mage/araise/raise_tp_dimension

#エンティティ削除
execute at @s run kill @e[tag=RaisePoint,distance=..3]
#タグ削除
tag @s remove Raising

#演出
execute at @s run function makeup:skill/act/white_mage/araise/raised
