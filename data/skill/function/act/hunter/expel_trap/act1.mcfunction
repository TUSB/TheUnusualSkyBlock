#> skill:act/hunter/expel_trap/act1
#
# ニフラムトラップ発動

# AEC召喚
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.01f,Particle:{type:angry_villager},Duration:300,Tags:[Skill,ExpelTrap,NativeTask]}

# プレイヤーレベル取得
execute store result score _ Calc run scoreboard players get @s Level

# 計算結果以下のレベルの敵は消滅する
# スキルレベル1 : 20 + Level / 4
# スキルレベル2 : 20 + Level / 3
scoreboard players set _ _ 5
scoreboard players operation _ _ -= _ Level
scoreboard players operation _ Calc /= _ _
scoreboard players set _ _ 20
scoreboard players operation _ Calc += _ _

# 計算結果を保存
execute store result entity @e[tag=ExpelTrap,tag=!Initialized,distance=0,limit=1] RadiusOnUse float 1 run scoreboard players get _ Calc

# 演出
function makeup:skill/act/hunter/expel_trap/act0
