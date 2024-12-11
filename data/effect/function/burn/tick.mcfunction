#> effect:burn/tick
### 火だるま

execute if block ~ ~ ~ water run scoreboard players set @s BurnCount 0
execute if entity @s[predicate=effects:fire_resistance] run scoreboard players set @s BurnCount 0

#火だるまダメージ付与
execute if score @s BurnCount matches 1.. run data modify storage score_damage: Argument set value {Damage:6,DamageType:[Fire],DeathCause:'[{"translate":"%1$sは%2$sになって焼け死んだ。","with":[{"selector":"@s"},{"interpret":true,"storage":"effects:","nbt":"BadEffectsName.Burn"}]}]'}
execute if score @s BurnCount matches 1.. if entity @s[gamemode=!creative,gamemode=!spectator] run function score_damage:api/attack

execute if score @s BurnCount matches 1.. run function makeup:effect/burn/tick

scoreboard players remove @s BurnCount 1

#火だるま回復
execute if score @s BurnCount matches ..0 run function effect:burn/cure
