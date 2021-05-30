
### 凍結 継続tp
execute as @e[type=area_effect_cloud,tag=Freeze,tag=Initializing] run function effects:freeze/set_rotation

execute as @e[type=area_effect_cloud,tag=Freeze] at @s run tp @a[limit=1,sort=nearest] @s
execute as @a[tag=Freeze] at @s run function makeup:effects/freeze/fix

execute as @a[tag=Freeze] at @s unless entity @e[type=area_effect_cloud,tag=Freeze,distance=..5] run function effects:freeze/cure

execute if entity @e[type=area_effect_cloud,tag=Freeze] run schedule function effects:freeze/fix 1t
