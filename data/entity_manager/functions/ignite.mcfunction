##############################
### 炸裂
##############################

execute store result entity @s Pos[0] double 0.001 run data get entity @s Passengers[0].Pos[0] 1000
execute store result entity @s Pos[1] double 0.001 run data get entity @s Passengers[0].Pos[1] 1000
execute store result entity @s Pos[2] double 0.001 run data get entity @s Passengers[0].Pos[2] 1000
execute at @s as @e[distance=..0.01,tag=Bullet] unless entity @s[distance=0] run function entity_manager:aiming_player
kill @s
