##############################
### パーティクル表示タグ更新
##############################

## パーティクル表示タグを削除
tag @a remove ShowParticles
## パーティクルタイマーをリセット
execute if score $ParticleTimer GlobalTickTimer matches 11 run scoreboard players set $ParticleTimer GlobalTickTimer 0

execute store result score $24 Global run scoreboard players operation $36 Global = $ParticleTimer DecrementTimer

scoreboard players operation $36 Global %= $6 Const
execute if score $36 Global matches 0 run tag @a[scores={ParticleDenom=5}] add ShowParticles
scoreboard players operation $36 Global %= $3 Const
execute if score $36 Global matches 0 run tag @a[scores={ParticleDenom=3}] add ShowParticles
scoreboard players operation $24 Global %= $4 Const
execute if score $24 Global matches 0 run tag @a[scores={ParticleDenom=4}] add ShowParticles
scoreboard players operation $24 Global %= $2 Const
execute if score $24 Global matches 0 run tag @a[scores={ParticleDenom=2}] add ShowParticles
execute as @a unless score @s ParticleDenom matches 2.. run tag @s add ShowParticles
