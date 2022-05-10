
### ロックンロール攻撃処理

execute at @s run tp @s ~ ~ ~ ~17 0
execute facing entity @s feet rotated ~10 0 positioned ^ ^ ^5 run tp @s ~ ~ ~
execute rotated as @s positioned ^ ^ ^102.4 if entity @s[distance=..102.4] positioned ^ ^ ^-102.4 facing entity @s feet positioned ^ ^ ^2 run tp @s ~ ~ ~

execute rotated as @s positioned ^ ^ ^10 if entity @s[distance=..15] positioned ^ ^ ^-20 if entity @s[distance=..15] run tag @s add Transition

function skill:damage/load

execute at @s as @e[dy=2,tag=Enemy] run function skill:damage/apply/
execute if entity @s[tag=Transition] facing entity @s feet positioned ^ ^ ^3 as @e[dy=2,tag=Enemy] run function skill:damage/apply/
execute if entity @s[tag=Transition] facing entity @s feet positioned ^ ^ ^4 as @e[dy=2,tag=Enemy] run function skill:damage/apply/

function makeup:skil/act/black_mage/rock_n_roll/attack

tag @s[tag=Transition] remove Transition
