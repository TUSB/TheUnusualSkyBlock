##############################
### レーダーヴィジョンtick
##############################

scoreboard players remove @s RaderVision 1
scoreboard players reset @e[x=1.0,y=2.0,z=3.0,distance=0,type=minecraft:arrow] ProjectileLife

### マイクラディメンション移動防止
execute if score @s Dimension matches 000..099 in overworld run tp @s ~ ~ ~ 
execute if score @s Dimension matches 100..199 in the_nether run tp @s ~ ~ ~ 
execute if score @s Dimension matches 200..299 in the_end run tp @s ~ ~ ~ 

### 原点経由
execute if score @s RaderVision matches 2 run function skill_manager:hunter/rader_vision/move0

### 復帰
execute if score @s RaderVision matches 0 run function skill_manager:hunter/rader_vision/return
