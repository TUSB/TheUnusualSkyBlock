data modify storage score_damage: Argument.DeathCause set value '[{"translate":"%1$sは%2$sによって気化した。","with":[{"selector":"@s"},{"nbt":"MobName","storage":"mob_data:","interpret":true}]}]'
execute unless data storage score_damage: Argument{Damage:0} run function score_damage:api/attack
function skill:enemy/laser/main/call_on_attack
execute if entity @s[nbt=!{Health:0.0f}] run function makeup:enemy/projectile_hit
scoreboard players set @s ProjectileTime -5