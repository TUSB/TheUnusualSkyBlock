
## 影封縫tick Mob

#ノックバック+下に落とす
execute rotated ~ 0 run tp @s ^ ^ ^-0.4
execute store result score _ _ run data get entity @s Motion[1] 100
execute store result entity @s Motion[1] double 0.01 run scoreboard players remove _ _ 50
#ポイント設置
summon area_effect_cloud ~ ~ ~ {Tags:[Skill,ShadowThrustPoint],Duration:18}
#ダメージ付与
function skill:damage/apply/
#演出
function makeup:skill/act/knight/shadow_thrust/tick_mob
