#> player:trigger/kill
scoreboard players set @s MP 0
execute in area:skylands run spawnpoint @s -75 14 -619
# data modify storage score_damage: Argument set value {Damage:99999,DamageType:["None"],BypassArmor:true,BypassResistance:true,DisableParticle:true,DeathCause:'[{"translate":"%1$sは祈りを捧げた。","with":[{"selector":"@s"}]}]'}
# function score_damage:api/attack
## ダメージシステムでkillする？
kill @s
scoreboard players enable @s kill
scoreboard players set @s kill 0
