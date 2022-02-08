#向きを設定
function skill:enemy/step/direction
#速度を設定
function skill:enemy/step/speed
#Posに加える
execute store result score _ Calc run data get entity @s Pos[0] 100
execute store result score _ _ run data get entity 0-0-0-0-0 Pos[0] 100
execute store result entity @s Pos[0] double 0.01 run scoreboard players operation _ Calc += _ _
execute store result score _ Calc run data get entity @s Pos[1] 100
execute store result score _ _ run data get entity 0-0-0-0-0 Pos[1] 100
execute store result entity @s Pos[1] double 0.01 run scoreboard players operation _ Calc += _ _
execute store result score _ Calc run data get entity @s Pos[2] 100
execute store result score _ _ run data get entity 0-0-0-0-0 Pos[2] 100
execute store result entity @s Pos[2] double 0.01 run scoreboard players operation _ Calc += _ _

#Rotationを設定
execute if data storage mob_data: Call.Rotation positioned as @s run function skill:enemy/spawn/set_rotation
