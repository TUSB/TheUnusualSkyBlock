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
execute if score $Random Global matches 10.. if score @s BlinkCount matches 1.. run function skill_manager:enemy/blink/on_success

###ジンスピリット ダメージ集計
scoreboard players operation @e[tag=GinSpirit,distance=..8] SkillAttribute += @s Damage

###体力更新
execute store result score $Health Global run data get entity @s AbsorptionAmount 100
scoreboard players operation $Health Global -= @s Damage
execute store result entity @s AbsorptionAmount float 0.01 run scoreboard players get $Health Global

###ダメージ演出 ※変更禁止
# data merge entity @s {ActiveEffects:[{Id:27b,Amplifier:127b,Duration:10,ShowParticles:false}]}
function enemy_manager:on_damaged
