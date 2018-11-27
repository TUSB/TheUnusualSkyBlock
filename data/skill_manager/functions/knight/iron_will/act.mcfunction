##############################
### アイアンウィル発動
##############################

execute if score @s SupportSkill matches 12021 run scoreboard players set @s IronWill 100
execute if score @s SupportSkill matches 12022 run scoreboard players set @s IronWill 400
execute if score @s SupportSkill matches 12023 run scoreboard players set @s IronWill 800

execute unless score @s SneakTime matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"アイアンウィル","color":"white","hoverEvent":{"action":"show_text","value":"ノックバックしなくなる。","color":"white"}},"の効果！"]
execute if score @s SneakTime matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@a[distance=..15]"},"に",{"text":"アイアンウィル","color":"white","hoverEvent":{"action":"show_text","value":"ノックバックしなくなる。","color":"white"}},"の効果！"]

###---演出---Start
playsound minecraft:block.anvil.land master @a[distance=..16] ~ ~ ~ 0.2 0.5
playsound minecraft:entity.iron_golem.hurt master @a[distance=..16] ~ ~ ~ 1 0
playsound minecraft:block.piston.contract master @a[distance=..16] ~ ~ ~ 1 0.6
particle minecraft:angry_villager ~ ~-0.3 ~ 1.3 0.2 1.3 1 14 force @a[tag=ShowParticles]
particle minecraft:item minecraft:dispenser ~ ~0.5 ~ 1.5 0.2 1.5 0.15 100 force @a[tag=ShowParticles]
###---演出---End
