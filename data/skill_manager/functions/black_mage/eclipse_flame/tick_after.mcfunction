##############################
### エクリプスフレイム本処理
##############################

###変数加算
scoreboard players add @s EclipseRadius 20

###パーティクル生産
function calc_manager:get/pos1
scoreboard players operation $Y1 Global -= @s EclipseRadius
function calc_manager:set/pos1
execute at @s if entity @s[y_rotation=0] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[EclipseFlameParticle,TickingTask]}
execute at @s if entity @s[y_rotation=60] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[EclipseFlameParticle,TickingTask]}
execute at @s if entity @s[y_rotation=120] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[EclipseFlameParticle,TickingTask]}
execute at @s if entity @s[y_rotation=180] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[EclipseFlameParticle,TickingTask]}
execute at @s if entity @s[y_rotation=240] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[EclipseFlameParticle,TickingTask]}
execute at @s if entity @s[y_rotation=30] run summon minecraft:area_effect_cloud ^ ^ ^0.1 {Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,DurationOnUse:0,Age:-2147483648,WaitTime:2147483647,ReapplicationDelay:2147483647,Duration:2147483647,Particle:"minecraft:block minecraft:air",Tags:[EclipseFlameParticle,TickingTask]}
tp @s ~ ~ ~ ~20 ~

###---演出---Start
execute if score $Second Count matches 1 as @a[distance=..32] facing entity @s feet facing ^ ^ ^-1 positioned as @s run playsound minecraft:entity.blaze.ambient master @s ^ ^ ^24 1.6 0.5
###---演出---End

###魔法持続時間終了処理
execute if score @s EclipseRadius matches 10000 run kill @s

###球内適当判定
scoreboard players operation $Damage Global = @s SkillAttribute
execute as @e[distance=..10,tag=Mob] at @s run function skill_manager:black_mage/eclipse_flame/deal_damage
