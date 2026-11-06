#> ai:skill/laser/main/damage
execute if entity @s[nbt=!{Health:0.0f}] run function entity:damage/apply/
function ai:skill/laser/main/call_on_attack
execute if entity @s[nbt=!{Health:0.0f}] run function makeup:enemy/projectile_hit
scoreboard players set @s ProjectileTime -10
