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

###被ロック時演算
execute as @s[nbt=!{ActiveEffects:[{Id:27b,Amplifier:127b}]}] at @s run function entity_manager:apply_damage_unlock

###スコアリセット
scoreboard players reset @s Damage
