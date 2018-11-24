##############################
### ロックンロール回転
##############################

scoreboard players operation $ID Global = @s ID

execute as @e[tag=RockNRoll] if score @s ID = $ID Global run function skill_manager:black_mage/rock_n_roll/attack

###---演出---Start
execute if entity @e[distance=..6,tag=RockNRoll,limit=1] run playsound minecraft:block.stone.step master @a[distance=..16] ~ ~ ~ 1.5 0.5
execute at @e[distance=..6,tag=RockNRoll] anchored eyes run particle minecraft:item minecraft:granite ^ ^ ^-0.2 0.1 0.2 0.2 0.05 2 force
###---演出---End

scoreboard players remove @s RockNRoll 1
scoreboard players reset @s[scores={RockNRoll=..0}] RockNRoll
