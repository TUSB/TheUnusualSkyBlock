##############################
### ワイルドカード バナー回転
##############################

execute if score $WildCard Global matches -40..-21 if entity @s[tag=Center] positioned as @s run tp @s ~ ~ ~ ~40 ~
execute if score $WildCard Global matches -20..-11 if entity @s[tag=Center] positioned as @s run tp @s ~ ~ ~ ~20 ~
execute if score $WildCard Global matches -10..-6 if entity @s[tag=Center] positioned as @s run tp @s ~ ~ ~ ~10 ~
execute if score $WildCard Global matches -5..0 if entity @s[tag=Center] positioned as @s run tp @s ~ ~ ~ ~5 ~

execute if entity @s[tag=Banner1] rotated ~ ~ run tp @s ^ ^ ^3 ~180 ~
execute if entity @s[tag=Banner2] rotated ~60 ~ run tp @s ^ ^ ^3 ~180 ~
execute if entity @s[tag=Banner3] rotated ~120 ~ run tp @s ^ ^ ^3 ~180 ~
execute if entity @s[tag=Banner4] rotated ~180 ~ run tp @s ^ ^ ^3 ~180 ~
execute if entity @s[tag=Banner5] rotated ~240 ~ run tp @s ^ ^ ^3 ~180 ~
execute if entity @s[tag=Banner6] rotated ~300 ~ run tp @s ^ ^ ^3 ~180 ~

###---演出---Start
execute positioned as @s[tag=!Center] run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 0 0 force @a[tag=ShowParticles]
###---演出---End
