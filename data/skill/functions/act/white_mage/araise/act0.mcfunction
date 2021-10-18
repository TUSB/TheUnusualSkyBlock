
### アレイズ発動

execute if score _ Level matches 2 as @a[distance=..10,scores={Age=0}] at @s run scoreboard players operation @s MP = @s MPMax

execute as @a[distance=..10,scores={Age=0}] at @s run function skill:act/white_mage/araise/raise
tag @a[distance=..10] add Reraise

#演出
function makeup:skill/act/white_mage/araise/act0
