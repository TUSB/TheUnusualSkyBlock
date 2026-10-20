##############################
### 断罪処理
##############################

#進行
scoreboard players add @s Interval 1

#回転
execute store result score _ _ run data get entity @s Rotation[1]
scoreboard players remove _ _ 3
execute store result entity @s Rotation[1] float 1 run scoreboard players get _ _

#演出
execute at @s run function makeup:skill/act/common/condemnation/tick
