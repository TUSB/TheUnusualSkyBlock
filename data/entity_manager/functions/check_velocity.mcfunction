##############################
### 十分な速度があるかチェック
##############################

###速度^2算出
scoreboard players set $Velocity Global 0

execute store result score $Vector Global run data get entity @s Motion[0] 1000
scoreboard players operation $Vector Global *= $Vector Global
scoreboard players operation $Velocity Global += $Vector Global

execute store result score $Vector Global run data get entity @s Motion[1] 1000
scoreboard players operation $Vector Global *= $Vector Global
scoreboard players operation $Velocity Global += $Vector Global

execute store result score $Vector Global run data get entity @s Motion[2] 1000
scoreboard players operation $Vector Global *= $Vector Global
scoreboard players operation $Velocity Global += $Vector Global

###例外処理
execute if score $Velocity Global matches ..4000000 if score @s ProjectileSkill matches 99995 as @e[distance=..5,tag=Mob,nbt={HurtTime:9s},sort=nearest,limit=1] run function skill_manager:knight/aerial_slash/hit

###速度が遅すぎると消す
execute if score $Velocity Global matches ..4000000 run kill @s
