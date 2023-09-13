#> skill:enemy/delay_action/act/execute/enemy/common/paralyze
# @within function skill:enemy/delay_action/act/execute/enemy/common/

# 演出
    particle electric_spark ~ ~1 ~ 0.25 0.5 0.25 0 3 force @a[distance=..32,tag=ShowParticles]

# 乱数取得
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 8
    scoreboard players operation _ Random %= _ _
# 向きを適当に変える
    execute if score _ Random matches 0 at @s run tp @s ~ ~ ~ ~3 ~3
    execute if score _ Random matches 1 at @s run tp @s ~ ~ ~ ~-3 ~-3
    execute if score _ Random matches 2 at @s run tp @s ~ ~ ~ ~3 ~-3
    execute if score _ Random matches 3 at @s run tp @s ~ ~ ~ ~-3 ~3
    execute if score _ Random matches 4 at @s run tp @s ~ ~ ~ ~ ~6
    execute if score _ Random matches 5 at @s run tp @s ~ ~ ~ ~ ~-6
    execute if score _ Random matches 6 at @s run tp @s ~ ~ ~ ~-6 ~
    execute if score _ Random matches 7 at @s run tp @s ~ ~ ~ ~6 ~