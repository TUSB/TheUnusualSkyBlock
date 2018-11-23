##############################
### フラワーギフト飛翔時
##############################

execute if entity @s[tag=FlowerGift1] run scoreboard players set $Modifier Global 40
execute if entity @s[tag=FlowerGift2] run scoreboard players set $Modifier Global 30
execute if entity @s[tag=FlowerGift3] run scoreboard players set $Modifier Global 20
execute if entity @s[tag=FlowerGift4] run scoreboard players set $Modifier Global 10
execute as @e[distance=..8,tag=Mob,tag=!Gifted] at @s run function skill_manager:white_mage/flower_gift/apply
execute as @e[distance=..8,type=minecraft:spawner_minecart,tag=!Spawner,tag=!Gifted] at @s run function skill_manager:white_mage/flower_gift/apply

###---演出---Start
particle minecraft:item minecraft:sunflower ~ ~ ~ 0.05 0.05 0.05 0.03 10 force
particle minecraft:item minecraft:blue_orchid ~ ~-0.1 ~ 0.05 0.05 0.05 0.03 5 force
###---演出---End
