#> effect:burn/apply
### 火だるま

# 効果付与の中断条件
execute if predicate effect:fire_resistance run return fail
execute if block ~ ~ ~ water run return fail

execute unless score @s BurnCount matches 0.. run function makeup:effect/burn/apply

execute store result score _ _ run data get entity @s active_effects[{id:"minecraft:invisibility",amplifier:3b}].duration 0.05
scoreboard players operation @s BurnCount > _ _
