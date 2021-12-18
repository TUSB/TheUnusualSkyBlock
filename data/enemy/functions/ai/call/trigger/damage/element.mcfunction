#指定した属性ダメージを受けていたら実行
scoreboard players set _ Calc 0

execute if entity @s[tag=ReceivedFireDamage] if data storage mob_data: CallList[{Element:[Fire]}] run scoreboard players set _ Calc 1
execute if entity @s[tag=ReceivedIceDamage] if data storage mob_data: CallList[{Element:[Ice]}] run scoreboard players set _ Calc 1
execute if entity @s[tag=ReceivedLightningDamage] if data storage mob_data: CallList[{Element:[Lightning]}] run scoreboard players set _ Calc 1
execute if entity @s[tag=ReceivedLightDamage] if data storage mob_data: CallList[{Element:[Light]}] run scoreboard players set _ Calc 1
execute if entity @s[tag=ReceivedDarkDamage] if data storage mob_data: CallList[{Element:[Dark]}] run scoreboard players set _ Calc 1

execute if score _ Calc matches 1 run function enemy:ai/call/execute/

tag @s remove ReceivedPhysicalDamage
tag @s remove ReceivedFireDamage
tag @s remove ReceivedIceDamage
tag @s remove ReceivedLightningDamage
tag @s remove ReceivedLightDamage
tag @s remove ReceivedDarkDamage
