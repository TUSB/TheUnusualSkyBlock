##############################
### 真空斬りヒット
##############################

scoreboard players add @s Damage 5000
execute store result entity @s Motion[0] double 0.006 run data get entity @s Motion[0] 1000
execute store result entity @s Motion[1] double 0.003 run data get entity @s Motion[1] 1000
execute store result entity @s Motion[2] double 0.006 run data get entity @s Motion[2] 1000
