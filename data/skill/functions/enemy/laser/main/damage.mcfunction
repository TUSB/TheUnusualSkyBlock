execute unless data storage score_damage: Argument{Damage:0} if entity @s[nbt=!{Health:0.0f}] run function score_damage:api/attack
function skill:enemy/laser/main/call_on_attack
execute if entity @s[nbt=!{Health:0.0f}] run function makeup:enemy/projectile_hit
scoreboard players set @s ProjectileTime -10
