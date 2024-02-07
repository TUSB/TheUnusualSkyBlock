#Function
execute store result score _ _ run function calc:geometry/distance/
execute if score _ _ <= # _ run function score_damage:api/attack
execute if score _ _ <= # _ run scoreboard players set @s ProjectileTime -10
