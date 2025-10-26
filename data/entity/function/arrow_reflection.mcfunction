#> entity:arrow_reflection
##############################
### 矢の反射削除処理
##############################

#1tick前のMotionと一致しなければ削除
execute unless score @s ArrowMotionX matches -2147483648.. store result score @s ArrowMotionX run data get entity @s Motion[0] 1000
execute unless score @s ArrowMotionZ matches -2147483648.. store result score @s ArrowMotionZ run data get entity @s Motion[2] 1000
scoreboard players operation _ ArrowMotionX = @s ArrowMotionX
scoreboard players operation _ ArrowMotionZ = @s ArrowMotionZ
execute store result score @s ArrowMotionX run data get entity @s Motion[0] 1000
execute store result score @s ArrowMotionZ run data get entity @s Motion[2] 1000

execute if predicate entity:arrow_reflection run tag @s add Garbage
execute if predicate entity:arrow_reflection if entity @s[tag=HasSkillDisplay] on passengers run kill @s[tag=SkillDisplay]
