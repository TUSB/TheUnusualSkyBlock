##############################
### モブダメージ被ロック時計算
##############################

###保存されたダメージを適用
scoreboard players operation @s Damage += @s StoredDamage
scoreboard players reset @s StoredDamage

###補正を適用
scoreboard players operation @s Damage *= $DamageModifier Global
scoreboard players operation @s Damage /= $5 Const

###体力更新
execute store result score $Health Global run data get entity @s AbsorptionAmount 100
scoreboard players operation $Health Global -= @s Damage
execute store result entity @s AbsorptionAmount float 0.01 run scoreboard players get $Health Global

###ダメージ演出 ※変更禁止
execute unless entity @s[nbt={AbsorptionAmount:0f}] run summon minecraft:snowball ~ ~300 ~ {Tags:[DamageBall]}
execute positioned ~ ~300 ~ run tp @e[distance=0,tag=DamageBall,limit=1] ~ ~-300.3101 ~
data merge entity @e[tag=DamageBall,limit=1] {Motion:[0d,10d,0d],Tags:[Initialized]}
data merge entity @s {ActiveEffects:[{Id:27b,Amplifier:127b,Duration:10,ShowParticles:false}]}

function calc_manager:save/motion
tag @s add DelayedTask
tag @s add DelayedMotion
data merge entity @s {Motion:[0d,0d,0d]}
