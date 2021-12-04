
### やけど

#やけどダメージ付与
execute unless block ~ ~ ~ water run data modify storage score_damage: Argument set value {Damage:5,DamageType:[Fire]}
execute unless block ~ ~ ~ water run function score_damage:api/attack
execute unless block ~ ~ ~ water run function makeup:effects/burn/tick

#やけど回復
scoreboard players remove @s BurnCount 1
execute if block ~ ~ ~ water run scoreboard players set @s BurnCount 0
execute if score @s BurnCount matches ..0 run function effects:burn/cure
