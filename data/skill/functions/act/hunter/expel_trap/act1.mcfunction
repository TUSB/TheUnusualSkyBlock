##############################
### ニフラムトラップ発動
##############################

#AEC召喚
#ReapplicationDelay: スキルレベル
#RadiusOnUse: プレイヤーレベル
execute if score _ Level matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.01f,Particle:"minecraft:angry_villager",ReapplicationDelay:1,Duration:300,Tags:[ExpelTrap,NativeTask]}
execute if score _ Level matches 2 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.01f,Particle:"minecraft:angry_villager",ReapplicationDelay:2,Duration:300,Tags:[ExpelTrap,NativeTask]}
#プレイヤーレベルを保存
execute store result entity @e[tag=ExpelTrap,tag=!Initialized,distance=0,limit=1] RadiusOnUse float 1 run scoreboard players get @s Level
#演出
function makeup:skill/act/hunter/expel_trap/act0
