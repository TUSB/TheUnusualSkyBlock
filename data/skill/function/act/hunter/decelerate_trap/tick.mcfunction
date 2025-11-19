#> skill:act/hunter/decelerate_trap/tick
#
# ボミオストラップ継続

# レベル取得
execute store result score _ Level run data get entity @s ReapplicationDelay

# Motion減速倍率
execute if score _ Level matches 1 run scoreboard players set _ Calc 80
execute if score _ Level matches 2 run scoreboard players set _ Calc 60
execute if score _ Level matches 3 run scoreboard players set _ Calc 40

# ボミオス管理用スコア・タグ付与
tag @e[tag=Enemy,distance=..5] add Decelerate
scoreboard players set @e[tag=Enemy,distance=..5] Decelerate 100

# 減速適用
execute as @e[tag=Decelerate] run function skill:act/hunter/decelerate_trap/apply

# 演出
function makeup:skill/act/hunter/decelerate_trap/tick
