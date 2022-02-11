
### アイスジャベリン消滅

function makeup:skill/act/black_mage/ice_javelin/break

execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=2,dz=1,tag=Mob] run function skill:damage/apply/
## ノックバック演出
# execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=2,dz=1,tag=Mob] positioned ~ ~2 ~ run function enemy_manager:knockback_weak

kill @s
