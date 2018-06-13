##############################
### モブダメージ付与
##############################

###耐性による補正を計算
scoreboard players set $DamageModifier Global 5
execute if entity @s[nbt={ActiveEffects:[{Id:11b,Amplifier:0b}]}] run scoreboard players set $DamageModifier Global 4
execute if entity @s[nbt={ActiveEffects:[{Id:11b,Amplifier:1b}]}] run scoreboard players set $DamageModifier Global 3
execute if entity @s[nbt={ActiveEffects:[{Id:11b,Amplifier:2b}]}] run scoreboard players set $DamageModifier Global 2
execute if entity @s[nbt={ActiveEffects:[{Id:11b,Amplifier:3b}]}] run scoreboard players set $DamageModifier Global 1
execute if score $DamageModifier Global matches 5 if entity @s[nbt={ActiveEffects:[{Id:11b}]}] run scoreboard players set $DamageModifier Global 0

###補正を適用
scoreboard players operation @s Damage *= $DamageModifier Global
scoreboard players operation @s Damage /= $5 Const

###体力更新
execute store result score $Health Global run data get entity @s AbsorptionAmount 100
scoreboard players operation $Health Global -= @s Damage
execute store result entity @s[nbt=!{ActiveEffects:[{Id:27b,Amplifier:127b}]}] AbsorptionAmount float 0.01 run scoreboard players get $Health Global

###ダメージ演出
execute if entity @s[nbt=!{AbsorptionAmount:0f},nbt=!{ActiveEffects:[{Id:27b,Amplifier:127b}]}] run summon minecraft:snowball ~ ~300 ~ {Tags:[DamageBall]}
execute positioned ~ ~300 ~ run tp @e[distance=0,tag=DamageBall] ~ ~-300.30001 ~
data merge entity @e[tag=DamageBall,limit=1] {Motion:[0d,10d,0d],Tags:[Initialized]}
data merge entity @s[nbt=!{ActiveEffects:[{Id:27b,Amplifier:127b}]}] {ActiveEffects:[{Id:27b,Duration:10,Amplifier:127b,ShowParticles:false}]}

###スコアリセット
scoreboard players reset @s Damage
