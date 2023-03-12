#Function
# ランダム処理
execute store result score _ Random run function calc:random
scoreboard players set _ _ 5
scoreboard players operation _ Random %= _ _
# 演出
execute if score _ Random matches 0 at @s run playsound item.elytra.flying hostile @a[distance=..6] ~ ~ ~ 0.2 1.8 0
execute if score _ Random matches 1 at @s run playsound item.elytra.flying hostile @a[distance=..6] ~ ~ ~ 0.2 1.2 0
execute if score _ Random matches 2 at @s run playsound item.elytra.flying hostile @a[distance=..6] ~ ~ ~ 0.2 0.8 0
particle explosion ~ ~ ~ 0.0 0.0 0.0 1 1 normal
