##############################
### スリプガ
##############################

data modify entity @s[tag=SleepgaNoAI] NoAI set value false
tag @s[tag=SleepgaNoAI] remove SleepgaNoAI
scoreboard players reset @s Sleepga

#演出
execute anchored eyes run function makeup:skill/act/black_mage/sleepga/wake
