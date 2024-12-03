#> player:particle/update_tag
### パーティクル表示タグ更新

## パーティクル表示タグを削除
tag @s remove ShowParticles

execute store result score _ Calc run scoreboard players operation _ _ = $Ticks Count

scoreboard players set _ ParticleDenom 6
scoreboard players operation _ _ %= _ ParticleDenom
execute if score _ _ matches 0 run tag @s[scores={ParticleDenom=5}] add ShowParticles
scoreboard players set _ ParticleDenom 3
scoreboard players operation _ _ %= _ ParticleDenom
execute if score _ _ matches 0 run tag @s[scores={ParticleDenom=3}] add ShowParticles
scoreboard players set _ ParticleDenom 4
scoreboard players operation _ Calc %= _ ParticleDenom
execute if score _ Calc matches 0 run tag @s[scores={ParticleDenom=4}] add ShowParticles
scoreboard players set _ ParticleDenom 2
scoreboard players operation _ Calc %= _ ParticleDenom
execute if score _ Calc matches 0 run tag @s[scores={ParticleDenom=2}] add ShowParticles
execute unless score @s ParticleDenom matches 2.. run tag @s add ShowParticles
