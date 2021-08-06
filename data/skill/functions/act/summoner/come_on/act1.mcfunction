##############################
### ヘイカモン
##############################

execute if score _ Level matches 1 run tp @e[distance=..10,team=Friendly,type=!minecraft:player] ~ ~ ~
execute if score _ Level matches 2 run tp @e[distance=..20,team=Friendly,type=!minecraft:player] ~ ~ ~
execute if score _ Level matches 3 run tp @e[distance=..30,team=Friendly,type=!minecraft:player] ~ ~ ~

execute if score @s SneakTime matches 1.. if score _ Level matches 1 run tp @a[distance=..10,gamemode=!creative,gamemode=!spectator] ~ ~ ~
execute if score @s SneakTime matches 1.. if score _ Level matches 2 run tp @a[distance=..20,gamemode=!creative,gamemode=!spectator] ~ ~ ~
execute if score @s SneakTime matches 1.. if score _ Level matches 3 run tp @a[distance=..30,gamemode=!creative,gamemode=!spectator] ~ ~ ~
#演出
function makeup:skill/act/summoner/come_on/act1
