
### 火だるま

execute unless score @s BurnCount matches 0.. run function makeup:effects/burn/apply

execute store result score _ _ run data get entity @s ActiveEffects[{Id:14,Amplifier:3b}].Duration 0.05
scoreboard players operation @s BurnCount > _ _
