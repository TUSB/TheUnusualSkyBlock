##############################
### つんつん
##############################

execute if score _ Level matches 1 run scoreboard players set _ Calc 1800
execute if score _ Level matches 2 run scoreboard players set _ Calc 3600
execute as @e[distance=..15,team=Friendly,type=!minecraft:player,tag=!Sicced] at @s run function skill:act/summoner/tsuntsun/apply
#演出
function makeup:skill/act/summoner/tsuntsun/act0
