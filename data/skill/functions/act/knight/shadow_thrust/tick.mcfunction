
## 影封縫tick

#ダメージをロード
function skill:damage/load
#ポイントから離れたモブにダメージ
execute as @e[tag=Enemy,distance=..4] at @s unless entity @e[tag=ShadowThrustPoint,distance=..0.5] run function skill:act/knight/shadow_thrust/tick_mob
#演出
function makeup:skill/act/knight/shadow_thrust/tick
