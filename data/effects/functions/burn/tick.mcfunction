
### 火だるま

scoreboard players remove @s BurnCount 1
execute if block ~ ~ ~ water run scoreboard players set @s BurnCount 0

#火だるまダメージ付与
execute unless block ~ ~ ~ water run data modify storage score_damage: Argument set value {Damage:6,DamageType:[Fire],DeathCause:'[{"translate":"%1$sは%2$sの効果で焼け死んだ。","with":[{"selector":"@s"},{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Burn"}]}]'}
execute unless block ~ ~ ~ water if entity @s[gamemode=!creative,gamemode=!spectator] run function score_damage:api/attack

execute unless block ~ ~ ~ water run function makeup:effects/burn/tick

#火だるま回復
execute if score @s BurnCount matches ..0 run function effects:burn/cure
