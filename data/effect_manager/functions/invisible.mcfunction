##############################
### 特殊効果処理
##############################

function calc_manager:update_random
scoreboard players operation $Random Global %= $100 Const
scoreboard players set $IsBadEffect Global 0
execute store success score $IsBadEffect Global unless entity @s[advancements={effect_manager:invisible={doom=false,super_doom=false,burn=false,debility=false,virus=false,confuse=false,curse=false,terror=false,tnt=false}}] run seed
execute unless score @s ResistLock matches 1 if score $IsBadEffect Global matches 1.. unless score $Random Global < @s ResistEffects run scoreboard players add @s ResistEffects 5
execute unless score @s ResistLock matches 1 if score $IsBadEffect Global matches 1.. if score $Random Global < @s ResistEffects run tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"は",{"text":"とても悪い効果","color":"white"},"を防いだ！"]
execute if score $IsBadEffect Global matches 1.. if score $Random Global < @s ResistEffects run advancement revoke @s only effect_manager:invisible
scoreboard players set @s ResistLock 1

execute if entity @s[advancements={effect_manager:invisible={doom=true}}] unless score @s DoomCount matches 1..31 run function effect_manager:doom/apply
execute if entity @s[advancements={effect_manager:invisible={super_doom=true}}] unless score @s DoomCount matches 1..13 run function effect_manager:doom/apply
execute if entity @s[advancements={effect_manager:invisible={super_doom=true}}] run scoreboard players operation @s DoomCount < $10 Const
execute if entity @s[advancements={effect_manager:invisible={burn=true}},tag=!Burn] run function effect_manager:burn/apply
execute if entity @s[advancements={effect_manager:invisible={debility=true}},tag=!Debility] run function effect_manager:debility/apply
execute if entity @s[advancements={effect_manager:invisible={virus=true}}] run function effect_manager:virus/apply
execute if entity @s[advancements={effect_manager:invisible={confuse=true}}] run function effect_manager:confuse/apply
execute if entity @s[advancements={effect_manager:invisible={curse=true}}] run function effect_manager:curse/apply
execute if entity @s[advancements={effect_manager:invisible={terror=true}}] run function effect_manager:terror/apply
execute if entity @s[advancements={effect_manager:invisible={tnt=true}}] run function effect_manager:tnt/apply

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
execute if entity @s[advancements={effect_manager:invisible={anti_burn=true}}] if entity @s[tag=Burn] run function effect_manager:burn/cure
execute if entity @s[advancements={effect_manager:invisible={anti_virus=true}}] if score @s VirusCount matches 0.. run function effect_manager:virus/cure
execute if entity @s[advancements={effect_manager:invisible={anti_confuse=true}}] if score @s ConfuseCount matches 0.. run function effect_manager:confuse/cure
execute if entity @s[advancements={effect_manager:invisible={anti_curse=true}}] if entity @s[tag=Curse] run function effect_manager:curse/cure
execute if entity @s[advancements={effect_manager:invisible={anti_terror=true}}] if score @s TerrorLevel matches 0.. run function effect_manager:terror/cure
execute if entity @s[advancements={effect_manager:invisible={anti_tnt=true}}] if score @s TntCount matches 0.. run function effect_manager:tnt/cure

execute if entity @s[advancements={effect_manager:invisible={vile_immunity=true}}] run scoreboard players operation @s ResistEffects > $20 Const
execute if entity @s[advancements={effect_manager:invisible={normal_immunity=true}}] run scoreboard players operation @s ResistEffects > $40 Const
execute if entity @s[advancements={effect_manager:invisible={high_immunity=true}}] run scoreboard players operation @s ResistEffects > $60 Const
execute if entity @s[advancements={effect_manager:invisible={super_immunity=true}}] run scoreboard players operation @s ResistEffects > $80 Const
execute unless entity @s[advancements={effect_manager:invisible={vile_immunity=false,normal_immunity=false,high_immunity=false,super_immunity=false}}] run tellraw @s [{"text":"","color":"green"},{"selector":"@s"},"の",{"text":"免疫力","color":"white"},"が上がった！"]

execute if entity @s[advancements={effect_manager:invisible={fire=true}}] run function effect_manager:fire/light

execute if entity @s[advancements={effect_manager:invisible={panacea=true}}] run function skill_manager:white_mage/clear/cure/level4
execute if entity @s[advancements={effect_manager:invisible={soma=true}}] run function effect_manager:soma
execute if entity @s[advancements={effect_manager:invisible={fire=true}}] run function effect_manager:fire

effect clear @s minecraft:invisibility
advancement revoke @s only effect_manager:invisible
