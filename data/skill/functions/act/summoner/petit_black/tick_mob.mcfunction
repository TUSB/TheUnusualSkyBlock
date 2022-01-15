##############################
### サモン：ぷちブラック tick as MOB
##############################

execute if score _ Calc matches 80 positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0,dy=0,dz=0] positioned ~0.5 ~ ~0.5 run function skill:act/summoner/petit_black/tick_mob_apply
execute if score _ Calc matches 160.. store result score _ _ run function calc:geometry/distance/
execute if score _ Calc matches 160.. if score _ _ <= _ Calc run function skill:act/summoner/petit_black/tick_mob_apply
