##############################
### ロックンロール攻撃処理
##############################

execute at @s run tp @s ~ ~ ~ ~17 0
execute facing entity @s feet rotated ~10 0 positioned ^ ^ ^5 run tp @s ~ ~ ~
execute rotated as @s positioned ^ ^ ^102.4 if entity @s[distance=..102.4] positioned ^ ^ ^-102.4 facing entity @s feet positioned ^ ^ ^2 run tp @s ~ ~ ~

execute rotated as @s positioned ^ ^ ^10 if entity @s[distance=..15] positioned ^ ^ ^-20 if entity @s[distance=..15] run tag @s add Transition

execute at @s run scoreboard players operation @e[dx=2,tag=Mob] Damage += @s SkillAttribute
execute if entity @s[tag=Transition] facing entity @s feet positioned ^ ^ ^3 run scoreboard players operation @e[dx=2,tag=Mob] Damage += @s SkillAttribute
execute if entity @s[tag=Transition] facing entity @s feet positioned ^ ^ ^4 run scoreboard players operation @e[dx=2,tag=Mob] Damage += @s SkillAttribute

###---演出---Start
execute at @s if entity @e[dx=2,tag=Mob,limit=1] run playsound minecraft:block.stone.break master @a[distance=..16] ~ ~ ~ 1.5 0.5
execute if entity @s[tag=Transition] facing entity @s feet positioned ^ ^ ^3 if entity @e[dx=2,tag=Mob,limit=1] run playsound minecraft:block.stone.break master @a[distance=..16] ~ ~ ~ 1.5 0.5
execute if entity @s[tag=Transition] facing entity @s feet positioned ^ ^ ^4 if entity @e[dx=2,tag=Mob,limit=1] run playsound minecraft:block.stone.break master @a[distance=..16] ~ ~ ~ 1.5 0.5
###---演出---End

tag @s[tag=Transition] remove Transition
