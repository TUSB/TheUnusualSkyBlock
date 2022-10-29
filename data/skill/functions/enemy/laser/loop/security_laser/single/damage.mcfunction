data modify storage score_damage: Argument.DeathCause set value '[{"selector":"@s"},{"translate":"は"},{"nbt":"MobName","storage":"mob_data:","interpret":true},{"translate":"によって蒸発させられた。"}]'
execute unless data storage score_damage: Argument{Damage:0} run function score_damage:api/attack
function skill:enemy/laser/main/call_on_attack
execute if entity @s[nbt=!{Health:0.0f}] run function makeup:enemy/projectile_hit
scoreboard players set @s ProjectileTime -5