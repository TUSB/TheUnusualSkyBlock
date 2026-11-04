#> skill:act/black_mage/ice_javelin/break
#
# アイスジャベリン消滅

# ダメージ
execute positioned ~-1 ~-1 ~-1 if entity @e[dx=1,dy=2,dz=1,tag=Enemy] run function skill:damage/load
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=2,dz=1,tag=Enemy] run function skill:damage/apply/

# 演出
function makeup:skill/act/black_mage/ice_javelin/break

# 終了
kill @s
