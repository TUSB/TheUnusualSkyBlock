scoreboard players set @s _ 0

execute if entity @s[tag=ReceivedPhysicalDamage] if data storage mob_data: Call.TriggerOn{Physical:true} run scoreboard players set @s _ 1
execute if entity @s[tag=ReceivedFireDamage] if data storage mob_data: Call.TriggerOn{Fire:true} run scoreboard players set @s _ 1
execute if entity @s[tag=ReceivedIceDamage] if data storage mob_data: Call.TriggerOn{Ice:true} run scoreboard players set @s _ 1
execute if entity @s[tag=ReceivedLightningDamage] if data storage mob_data: Call.TriggerOn{Lightning:true} run scoreboard players set @s _ 1
execute if entity @s[tag=ReceivedLightDamage] if data storage mob_data: Call.TriggerOn{Light:true} run scoreboard players set @s _ 1
execute if entity @s[tag=ReceivedDarkDamage] if data storage mob_data: Call.TriggerOn{Dark:true} run scoreboard players set @s _ 1

execute if score @s _ matches 1 run function skill:enemy/blink/activate/roll