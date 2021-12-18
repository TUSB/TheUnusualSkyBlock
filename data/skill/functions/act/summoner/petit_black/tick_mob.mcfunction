##############################
### サモン：ぷちブラック tick as MOB
##############################

execute store result score _ _ run function calc:geometry/distance/
execute if score _ _ <= _ Calc run function skill:act/summoner/petit_black/tick_mob_apply
