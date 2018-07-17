##############################
### モブダメージ被ロック時計算
##############################

###保存されたダメージを適用
scoreboard players operation @s Damage += @s StoredDamage
scoreboard players reset @s StoredDamage

###補正を適用
scoreboard players operation @s Damage *= $DamageModifier Global
scoreboard players operation @s Damage /= $5 Const

###幻影反映
function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
execute if score $Random Global matches 10.. if score @s BlinkCount matches 1.. run function skill_manager:enemy/blink/success

###体力更新
execute store result score $Health Global run data get entity @s AbsorptionAmount 100
scoreboard players operation $Health Global -= @s Damage
execute store result entity @s AbsorptionAmount float 0.01 run scoreboard players get $Health Global
execute if score $Debug Settings matches 1 run tellraw @a ["[デバッグ] ",{"selector":"@s"},"に ",{"score":{"name":"@s","objective":"Damage"},"color":"aqua"}," ダメージ！"]

###ダメージ演出 ※変更禁止
execute unless entity @s[nbt={AbsorptionAmount:0f}] run summon minecraft:snowball ~ ~300 ~ {Tags:[DamageBall]}
execute positioned ~ ~300 ~ run tp @e[distance=0,tag=DamageBall,limit=1] ~ ~-300.31 ~
data merge entity @e[tag=DamageBall,limit=1] {Motion:[0d,10d,0d],Tags:[Initialized]}
data merge entity @s {ActiveEffects:[{Id:27b,Amplifier:127b,Duration:10,ShowParticles:false}]}

function calc_manager:save/motion
tag @s add DelayedTask
tag @s add DelayedMotion
data merge entity @s {Motion:[0d,0d,0d]}
