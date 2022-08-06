##############################
### スリプガ
##############################

scoreboard players remove @s Sleepga 1

#演出
execute if score @s Sleepga matches 1.. anchored eyes run function makeup:skill/act/black_mage/sleepga/tick

execute if score @s Sleepga matches ..0 run function skill:act/black_mage/sleepga/wake
