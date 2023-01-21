#Function
function score_damage:api/attack
tag @s remove ZedraLanding3
execute if entity @s[nbt=!{Health:0.0f}] run function makeup:enemy/projectile_hit
