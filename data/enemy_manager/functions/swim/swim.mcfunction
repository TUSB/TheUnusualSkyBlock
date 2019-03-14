##############################
### 流体移動速度アップ
##############################

execute store result score $M Global run data get entity @s Attributes[0].Modifiers[0].Amount 100
execute positioned as @s[tag=Leave] facing entity @a[gamemode=!creative,gamemode=!spectator,scores={Age=1..},distance=..32,limit=1,sort=nearest] feet run function enemy_manager:swim/leave
execute positioned as @s[tag=Approach] facing entity @a[gamemode=!creative,gamemode=!spectator,scores={Age=1..},distance=..32,limit=1,sort=nearest] feet run function enemy_manager:swim/approach

execute if entity @s[tag=Step] run function enemy_manager:swim/step/check

execute if entity @s[tag=Straight] run function calc_manager:load/rotation
execute if entity @s[tag=Straight] at @s positioned ^ ^ ^1 run function calc_manager:get/direction1
execute if entity @s[tag=Horizontal] at @s positioned ^ ^ ^1 run function calc_manager:get/direction1xz
execute if entity @s[tag=Vertical] at @s positioned ^ ^ ^1 run function calc_manager:get/direction1y
execute if entity @s[tag=!Horizontal,tag=!Vertical,tag=!Straight] at @s positioned ^ ^ ^1 run function calc_manager:get/direction1
function calc_manager:multiply/pos1

function calc_manager:get/motion2

function calc_manager:add/1-2

function calc_manager:set/motion1
