#> entity:arrow_reflection
##############################
### 矢の反射削除処理
##############################

#1tick前のMotionと一致しなければ削除
execute unless score @s ArrowMotionX matches -2147483648.. store result score @s ArrowMotionX if predicate entity:arrow_reflection/motion_x
execute unless score @s ArrowMotionZ matches -2147483648.. store result score @s ArrowMotionZ if predicate entity:arrow_reflection/motion_z
scoreboard players operation _ ArrowMotionX = @s ArrowMotionX
scoreboard players operation _ ArrowMotionZ = @s ArrowMotionZ
execute store result score @s ArrowMotionX if predicate entity:arrow_reflection/motion_x
execute store result score @s ArrowMotionZ if predicate entity:arrow_reflection/motion_z

# ArrowMotion = 1 : +方向, 0 : -方向
execute if predicate entity:arrow_reflection/ run tag @s add Garbage
execute if predicate entity:arrow_reflection/ if entity @s[tag=HasSkillDisplay] on passengers run kill @s[tag=SkillDisplay]
