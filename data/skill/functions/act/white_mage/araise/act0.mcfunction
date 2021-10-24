
### アレイズ発動

execute if score _ Level matches 2 as @a[scores={Age=0}] if entity @s[distance=..10] at @s run scoreboard players operation @s MP = @s MPMax

execute as @a[scores={Age=0}] if entity @s[distance=..10] at @s run function skill:act/white_mage/araise/raise
tag @a[distance=..10,scores={Age=1..}] add Reraise

#演出
function makeup:skill/act/white_mage/araise/act0
