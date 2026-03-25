#> skill:act/white_mage/araise/act0
#
# アレイズ発動

# ボス戦中なら失敗
execute if data storage main: {bossfight:1b} run return run function makeup:skill/act/white_mage/araise/error

# Lv2ならMPを全回復
execute if score _ Level matches 2 as @a[scores={Age=0}] if entity @s[distance=..10] at @s run scoreboard players operation @s MP = @s MPMax

execute as @a[distance=..10,scores={Age=0}] at @s run tag @s add Raise
execute as @a[distance=..10,scores={Age=0}] at @s run function skill:act/white_mage/araise/raise
tag @a[distance=..10,scores={Age=1..}] add Reraise

# 演出
function makeup:skill/act/white_mage/araise/act0
