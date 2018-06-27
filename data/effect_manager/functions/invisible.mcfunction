##############################
### 特殊効果処理
##############################

execute if entity @s[advancements={effect_manager:fork_invisible={doom=true}}] unless score @s DoomCount matches 1..31 run function effect_manager:doom/apply

execute if entity @s[advancements={effect_manager:fork_invisible={ether=true}}] run scoreboard players operation @s MPConsumption -= $25 MPConsumption
execute if entity @s[advancements={effect_manager:fork_invisible={high_ether=true}}] run scoreboard players operation @s MPConsumption -= $50 MPConsumption
execute if entity @s[advancements={effect_manager:fork_invisible={super_ether=true}}] run scoreboard players operation @s MPConsumption -= $100 MPConsumption
execute if entity @s[advancements={effect_manager:fork_invisible={ultra_ether=true}}] run scoreboard players operation @s MPConsumption -= $200 MPConsumption

scoreboard players set $Elixir Global 0
execute if entity @s[advancements={effect_manager:fork_invisible={elixir=true}}] run scoreboard players set $Elixir Global 2
execute if entity @s[advancements={effect_manager:fork_invisible={high_elixir=true}}] run scoreboard players set $Elixir Global 4
execute if entity @s[advancements={effect_manager:fork_invisible={super_elixir=true}}] run scoreboard players set $Elixir Global 7
execute if entity @s[advancements={effect_manager:fork_invisible={ultra_elixir=true}}] run scoreboard players set $Elixir Global 10
scoreboard players operation $Elixir Global *= @s MPMax
scoreboard players operation $Elixir Global /= $10 Const
scoreboard players operation @s MPConsumption -= $Elixir Global

execute if entity @s[advancements={effect_manager:fork_invisible={anti_doom=true}}] if score @s DoomCount matches 0.. run function effect_manager:doom/escape

effect clear @s minecraft:invisibility
advancement revoke @s only effect_manager:fork_invisible
