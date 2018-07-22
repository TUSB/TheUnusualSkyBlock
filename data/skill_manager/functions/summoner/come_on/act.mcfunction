##############################
### ヘイカモン
##############################

execute if score @s SupportSkill matches 62031 as @e[distance=..10,team=Friendly,type=!minecraft:player] at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run tp @s ~ ~ ~
execute if score @s SupportSkill matches 62032 as @e[distance=..20,team=Friendly,type=!minecraft:player] at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run tp @s ~ ~ ~
execute if score @s SupportSkill matches 62033 as @e[distance=..30,team=Friendly,type=!minecraft:player] at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run tp @s ~ ~ ~

execute if score @s SneakTime matches 1.. if score @s SupportSkill matches 62031 as @a[distance=..10] run tp @s ~ ~ ~
execute if score @s SneakTime matches 1.. if score @s SupportSkill matches 62032 as @a[distance=..20] run tp @s ~ ~ ~
execute if score @s SneakTime matches 1.. if score @s SupportSkill matches 62033 as @a[distance=..30] run tp @s ~ ~ ~

###---演出---Start
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 2
###---演出---End
