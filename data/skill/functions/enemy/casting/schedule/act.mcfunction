scoreboard players add @s CastingTick 1
execute if score @s CastingTick matches 5 positioned ~ ~0.5 ~ run function skill:enemy/casting/particle/
execute if score @s CastingTick matches 10 positioned ~ ~1.0 ~ run function skill:enemy/casting/particle/
execute if score @s CastingTick matches 15 positioned ~ ~1.5 ~ run function skill:enemy/casting/particle/


execute if score @s CastingTick matches 15.. run function skill:enemy/casting/schedule/end