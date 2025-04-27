#> ai:skill/blink/activate/
scoreboard players set @s _ 0

data modify storage mob_data: Blink set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Blink

execute if entity @s[tag=ReceivedPhysicalDamage] if data storage mob_data: Blink{TriggerOn:[Physical]} run scoreboard players set @s _ 1

execute if score @s _ matches 1 run function skill:enemy/blink/activate/roll
