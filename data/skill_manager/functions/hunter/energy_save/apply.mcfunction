##############################
### エナジーセーブ適用
##############################

execute if score $ActiveSkill Global matches 32051 run scoreboard players operation @s EnergySave > $1 Const
execute if score $ActiveSkill Global matches 32052 run scoreboard players operation @s EnergySave > $2 Const
execute if score $ActiveSkill Global matches 32053 run scoreboard players operation @s EnergySave > $3 Const

###メッセージ
execute unless score @s SneakTime matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"エナジーセーブ","color":"white","hoverEvent":{"action":"show_text","value":"消費MPが少なくなる。","color":"white"}},"の効果！"]
execute if score @s SneakTime matches 1.. run tellraw @a [{"text":"","color":"green"},{"selector":"@a[distance=..15]"},"に",{"text":"エナジーセーブ","color":"white","hoverEvent":{"action":"show_text","value":"消費MPが少なくなる。","color":"white"}},"の効果！"]

###---演出---Start
playsound minecraft:block.anvil.use master @a[distance=..15] ~ ~ ~ 0.8 2
playsound minecraft:block.anvil.use master @a[distance=..15] ~ ~ ~ 0.8 1.6
playsound minecraft:block.anvil.use master @a[distance=..15] ~ ~ ~ 0.8 1.2
particle minecraft:enchanted_hit ~ ~1.8 ~ 0.7 0.7 0.7 0 40 force
###---演出---End
