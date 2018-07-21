##############################
### アレイズ発動
##############################

execute if score @s ModeSkill matches 42072 as @a[distance=..10,scores={TimeSinceDeath=0}] at @s run scoreboard players operation @s MP = @s MPMax

execute as @a[distance=..10,scores={TimeSinceDeath=0}] at @s run function skill_manager:white_mage/araise/raise
tag @a[distance=..10] add Reraise

###---演出---Start
execute as @a[distance=..10] run tellraw @a [{"text":"","color":"green"},{"selector":"@s"},"に",{"text":"リレイズ","color":"white","hoverEvent":{"action":"show_text","value":"死亡時にレイズの効果を得る。","color":"white"}},"の効果！"]
###---演出---End
