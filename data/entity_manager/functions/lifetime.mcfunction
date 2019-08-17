##############################
### 寿命
##############################

scoreboard players remove @s LifeTime 1
execute if score @s LifeTime matches ..-1 run tag @s add Garbage
