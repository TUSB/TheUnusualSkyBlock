##############################
### モブへダメージ
##############################

execute store result score $EffectID Global run data get entity @s ActiveEffects[0].Id
execute if score $EffectID Global matches 21 store result score @s Damage run data get entity @s ActiveEffects[0].Duration 1

execute store result score $EffectID Global run data get entity @s ActiveEffects[1].Id
execute if score $EffectID Global matches 21 store result score @s Damage run data get entity @s ActiveEffects[1].Duration 1

execute store result score $EffectID Global run data get entity @s ActiveEffects[2].Id
execute if score $EffectID Global matches 21 store result score @s Damage run data get entity @s ActiveEffects[2].Duration 1

execute store result score $EffectID Global run data get entity @s ActiveEffects[3].Id
execute if score $EffectID Global matches 21 store result score @s Damage run data get entity @s ActiveEffects[3].Duration 1

execute store result score $EffectID Global run data get entity @s ActiveEffects[4].Id
execute if score $EffectID Global matches 21 store result score @s Damage run data get entity @s ActiveEffects[4].Duration 1

execute store result score $EffectID Global run data get entity @s ActiveEffects[5].Id
execute if score $EffectID Global matches 21 store result score @s Damage run data get entity @s ActiveEffects[5].Duration 1

execute store result score $EffectID Global run data get entity @s ActiveEffects[6].Id
execute if score $EffectID Global matches 21 store result score @s Damage run data get entity @s ActiveEffects[6].Duration 1

execute store result score $EffectID Global run data get entity @s ActiveEffects[7].Id
execute if score $EffectID Global matches 21 store result score @s Damage run data get entity @s ActiveEffects[7].Duration 1

execute store result score $EffectID Global run data get entity @s ActiveEffects[8].Id
execute if score $EffectID Global matches 21 store result score @s Damage run data get entity @s ActiveEffects[8].Duration 1

execute store result score $EffectID Global run data get entity @s ActiveEffects[9].Id
execute if score $EffectID Global matches 21 store result score @s Damage run data get entity @s ActiveEffects[9].Duration 1

effect clear @s minecraft:health_boost
