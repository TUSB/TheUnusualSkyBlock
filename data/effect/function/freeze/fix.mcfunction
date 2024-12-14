#> effect:freeze/fix
### 凍結 継続tp
execute as @a[tag=Freeze] at @s run tp @s @e[type=marker,tag=Freeze,limit=1,sort=nearest]

scoreboard players remove @a[tag=Freeze] FreezeTimer 1
execute as @a[tag=Freeze,scores={FreezeTimer=..-1}] at @s run function effects:freeze/cure
execute as @a[tag=Freeze,scores={FreezeTimer=0..}] unless data entity @s {Fire:-20s} at @s run function effects:freeze/cure
execute as @a[tag=Freeze,scores={FreezeTimer=0..}] if score @s BurnCount matches 0.. at @s run function effects:freeze/cure

execute if entity @a[tag=Freeze,scores={FreezeTimer=0..}] run schedule function effects:freeze/fix 1t
