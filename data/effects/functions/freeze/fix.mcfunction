
### 凍結 継続tp
execute as @e[type=marker,tag=Freeze,tag=Initializing] run function effects:freeze/set_rotation

execute as @a[tag=Freeze] at @s run tp @s @e[limit=1,sort=nearest,tag=Freeze,type=marker]
execute as @a[tag=Freeze] at @s run function makeup:effects/freeze/fix

scoreboard players remove @a[tag=Freeze] FreezeTimer 1
execute as @a[tag=Freeze,scores={FreezeTimer=..-1}] at @s run function effects:freeze/cure

execute if entity @a[tag=Freeze,scores={FreezeTimer=0..}] run schedule function effects:freeze/fix 1t
