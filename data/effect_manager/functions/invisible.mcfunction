##############################
### 特殊効果処理
##############################

execute if entity @s[advancements={effect_manager:fork_invisible={doom=true}}] unless score @s DoomCount matches 1..31 run function effect_manager:doom/apply

execute if entity @s[advancements={effect_manager:fork_invisible={ether=true}}] run scoreboard players remove @s MPConsumption 25
execute if entity @s[advancements={effect_manager:fork_invisible={high_ether=true}}] run scoreboard players remove @s MPConsumption 50
execute if entity @s[advancements={effect_manager:fork_invisible={super_ether=true}}] run scoreboard players remove @s MPConsumption 100
execute if entity @s[advancements={effect_manager:fork_invisible={ultra_ether=true}}] run scoreboard players remove @s MPConsumption 200

execute if entity @s[advancements={effect_manager:fork_invisible={healing=true}}] run scoreboard players add @s HealthHealing 10
execute if entity @s[advancements={effect_manager:fork_invisible={high_healing=true}}] run scoreboard players add @s HealthHealing 20
execute if entity @s[advancements={effect_manager:fork_invisible={super_healing=true}}] run scoreboard players add @s HealthHealing 40
execute if entity @s[advancements={effect_manager:fork_invisible={ultra_healing=true}}] run scoreboard players add @s HealthHealing 80

scoreboard players set $Elixir Global 0
execute if entity @s[advancements={effect_manager:fork_invisible={elixir=true}}] run scoreboard players set $Elixir Global 2
execute if entity @s[advancements={effect_manager:fork_invisible={high_elixir=true}}] run scoreboard players set $Elixir Global 4
execute if entity @s[advancements={effect_manager:fork_invisible={super_elixir=true}}] run scoreboard players set $Elixir Global 7
execute if entity @s[advancements={effect_manager:fork_invisible={ultra_elixir=true}}] run scoreboard players set $Elixir Global 10
scoreboard players operation $Elixir Global *= @s MPMax
scoreboard players operation $Elixir Global /= $10 Const
scoreboard players operation @s MPConsumption -= $Elixir Global

execute store result score $MaxHP Global run data get entity @s Attributes[0].Modifiers[0].Amount
scoreboard players add $MaxHP Global 20
scoreboard players operation $Healing Global = $MaxHP Global
scoreboard players operation $Healing Global *= $3 Const
scoreboard players operation $Healing Global /= $10 Const
execute if entity @s[advancements={effect_manager:fork_invisible={ex_healing=true}}] run scoreboard players operation @s HealthHealing += $Healing Global
scoreboard players operation $Healing Global = $MaxHP Global
scoreboard players operation $Healing Global *= $6 Const
scoreboard players operation $Healing Global /= $10 Const
execute if entity @s[advancements={effect_manager:fork_invisible={high_ex_healing=true}}] run scoreboard players operation @s HealthHealing += $Healing Global
scoreboard players operation $Healing Global = $MaxHP Global
execute if entity @s[advancements={effect_manager:fork_invisible={super_ex_healing=true}}] run scoreboard players operation @s HealthHealing += $Healing Global
scoreboard players operation $Healing Global = $MaxHP Global
scoreboard players operation $Healing Global *= $2 Const
execute if entity @s[advancements={effect_manager:fork_invisible={ultra_ex_healing=true}}] run scoreboard players operation @s HealthHealing += $Healing Global

execute if entity @s[advancements={effect_manager:fork_invisible={anti_doom=true}}] if score @s DoomCount matches 0.. run function effect_manager:doom/escape

effect clear @s minecraft:invisibility
advancement revoke @s only effect_manager:fork_invisible
