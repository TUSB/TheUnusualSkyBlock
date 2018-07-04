##############################
### 特殊効果処理
##############################

execute if entity @s[advancements={effect_manager:invisible={doom=true}}] unless score @s DoomCount matches 1..31 run function effect_manager:doom/apply

execute if entity @s[advancements={effect_manager:invisible={vile_ether=true}}] run scoreboard players remove @s MPConsumption 25
execute if entity @s[advancements={effect_manager:invisible={normal_ether=true}}] run scoreboard players remove @s MPConsumption 50
execute if entity @s[advancements={effect_manager:invisible={high_ether=true}}] run scoreboard players remove @s MPConsumption 100
execute if entity @s[advancements={effect_manager:invisible={super_ether=true}}] run scoreboard players remove @s MPConsumption 200
execute if entity @s[advancements={effect_manager:invisible={vile_elixir=true}}] run scoreboard players remove @s MPConsumption 25
execute if entity @s[advancements={effect_manager:invisible={normal_elixir=true}}] run scoreboard players remove @s MPConsumption 50
execute if entity @s[advancements={effect_manager:invisible={high_elixir=true}}] run scoreboard players remove @s MPConsumption 100
execute if entity @s[advancements={effect_manager:invisible={super_elixir=true}}] run scoreboard players remove @s MPConsumption 200

execute if entity @s[advancements={effect_manager:invisible={vile_potion=true}}] run scoreboard players add @s HealthHealing 5
execute if entity @s[advancements={effect_manager:invisible={normal_potion=true}}] run scoreboard players add @s HealthHealing 10
execute if entity @s[advancements={effect_manager:invisible={high_potion=true}}] run scoreboard players add @s HealthHealing 20
execute if entity @s[advancements={effect_manager:invisible={super_potion=true}}] run scoreboard players add @s HealthHealing 40
execute if entity @s[advancements={effect_manager:invisible={vile_elixir=true}}] run scoreboard players add @s HealthHealing 5
execute if entity @s[advancements={effect_manager:invisible={normal_elixir=true}}] run scoreboard players add @s HealthHealing 10
execute if entity @s[advancements={effect_manager:invisible={high_elixir=true}}] run scoreboard players add @s HealthHealing 20
execute if entity @s[advancements={effect_manager:invisible={super_elixir=true}}] run scoreboard players add @s HealthHealing 40

scoreboard players set $Rate Global 0
execute if entity @s[advancements={effect_manager:invisible={vile_rate_ether=true}}] run scoreboard players set $Rate Global 1
execute if entity @s[advancements={effect_manager:invisible={normal_rate_ether=true}}] run scoreboard players set $Rate Global 3
execute if entity @s[advancements={effect_manager:invisible={high_rate_ether=true}}] run scoreboard players set $Rate Global 6
execute if entity @s[advancements={effect_manager:invisible={super_rate_ether=true}}] run scoreboard players set $Rate Global 10
execute if entity @s[advancements={effect_manager:invisible={vile_rate_elixir=true}}] run scoreboard players set $Rate Global 1
execute if entity @s[advancements={effect_manager:invisible={normal_rate_elixir=true}}] run scoreboard players set $Rate Global 3
execute if entity @s[advancements={effect_manager:invisible={high_rate_elixir=true}}] run scoreboard players set $Rate Global 6
execute if entity @s[advancements={effect_manager:invisible={super_rate_elixir=true}}] run scoreboard players set $Rate Global 10
scoreboard players operation $Rate Global *= @s MPMax
scoreboard players operation $Rate Global /= $10 Const
scoreboard players operation @s MPConsumption -= $Rate Global

execute store result score $MaxHP Global run data get entity @s Attributes[0].Modifiers[0].Amount
scoreboard players add $MaxHP Global 20
scoreboard players operation $Healing Global = $MaxHP Global
scoreboard players operation $Healing Global *= $2 Const
scoreboard players operation $Healing Global /= $10 Const
execute if entity @s[advancements={effect_manager:invisible={vile_rate_potion=true}}] run scoreboard players operation @s HealthHealing += $Healing Global
execute if entity @s[advancements={effect_manager:invisible={vile_rate_elixir=true}}] run scoreboard players operation @s HealthHealing += $Healing Global
scoreboard players operation $Healing Global = $MaxHP Global
scoreboard players operation $Healing Global *= $6 Const
scoreboard players operation $Healing Global /= $10 Const
execute if entity @s[advancements={effect_manager:invisible={normal_rate_potion=true}}] run scoreboard players operation @s HealthHealing += $Healing Global
execute if entity @s[advancements={effect_manager:invisible={normal_rate_elixir=true}}] run scoreboard players operation @s HealthHealing += $Healing Global
scoreboard players operation $Healing Global = $MaxHP Global
scoreboard players operation $Healing Global *= $12 Const
scoreboard players operation $Healing Global /= $10 Const
execute if entity @s[advancements={effect_manager:invisible={high_rate_potion=true}}] run scoreboard players operation @s HealthHealing += $Healing Global
execute if entity @s[advancements={effect_manager:invisible={high_rate_elixir=true}}] run scoreboard players operation @s HealthHealing += $Healing Global
scoreboard players operation $Healing Global = $MaxHP Global
scoreboard players operation $Healing Global *= $2 Const
execute if entity @s[advancements={effect_manager:invisible={super_rate_potion=true}}] run scoreboard players operation @s HealthHealing += $Healing Global
execute if entity @s[advancements={effect_manager:invisible={super_rate_elixir=true}}] run scoreboard players operation @s HealthHealing += $Healing Global

execute if entity @s[advancements={effect_manager:invisible={anti_doom=true}}] if score @s DoomCount matches 0.. run function effect_manager:doom/escape

effect clear @s minecraft:invisibility
advancement revoke @s only effect_manager:invisible
