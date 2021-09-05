##############################
### 矢の反射削除処理
##############################

#1tick前のRotationと一致しなければ削除
scoreboard players operation _ ArrowRotation = @s ArrowRotation
execute store result score @s ArrowRotation run data get entity @s Rotation[0]

execute unless score _ ArrowRotation = @s ArrowRotation run tag @s add Garbage
execute unless score _ ArrowRotation = @s[tag=HasSkillSnowball] ArrowRotation run kill @e[tag=SkillSnowball,distance=..0.5]
