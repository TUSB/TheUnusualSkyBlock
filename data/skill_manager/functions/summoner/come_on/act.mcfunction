##############################
### ヘイカモン
##############################

execute if score @s SupportSkill matches 62031 as @e[distance=..10,team=Friendly,type=!minecraft:player] at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run tp @s ~ ~ ~
execute if score @s SupportSkill matches 62032 as @e[distance=..20,team=Friendly,type=!minecraft:player] at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run tp @s ~ ~ ~
execute if score @s SupportSkill matches 62033 as @e[distance=..30,team=Friendly,type=!minecraft:player] at @e[tag=Egg,distance=..6,sort=nearest,limit=1] run tp @s ~ ~ ~

execute if score @s SneakTime matches 1.. if score @s SupportSkill matches 62031 as @a[distance=..10,gamemode=!creative,gamemode=!spectator] run tp @s ~ ~ ~
execute if score @s SneakTime matches 1.. if score @s SupportSkill matches 62032 as @a[distance=..20,gamemode=!creative,gamemode=!spectator] run tp @s ~ ~ ~
execute if score @s SneakTime matches 1.. if score @s SupportSkill matches 62033 as @a[distance=..30,gamemode=!creative,gamemode=!spectator] run tp @s ~ ~ ~

###---演出---Start
playsound minecraft:entity.wolf.ambient master @a[distance=..16] ~ ~ ~ 1 1.8
playsound minecraft:entity.firework_rocket.blast master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.dolphin.play master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.dolphin.play master @a[distance=..16] ~ ~ ~ 1 1
playsound minecraft:entity.dolphin.play master @a[distance=..16] ~ ~ ~ 1 1
particle minecraft:falling_dust minecraft:magenta_wool ~ ~1.8 ~ 0.3 1.5 0.3 0 100
particle minecraft:falling_dust minecraft:lime_wool ~ ~0.8 ~ 0.6 0.2 0.6 0.5 15
particle minecraft:falling_dust minecraft:yellow_wool ~ ~0.5 ~ 0.8 0.1 0.8 0.5 30
particle minecraft:instant_effect ~ ~ ~ 1 0 1 1 50
###---演出---End
