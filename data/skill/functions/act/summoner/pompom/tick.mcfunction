##############################
### ぽむぽむ花火tick
##############################

scoreboard players remove @s Interval 1
execute positioned ~-2.5 ~-2.5 ~-2.5 if entity @e[tag=Enemy,dx=4,dy=4,dz=4] run scoreboard players remove @s Interval 1

execute if score @s Interval matches ..0 run function skill:act/summoner/pompom/explode
