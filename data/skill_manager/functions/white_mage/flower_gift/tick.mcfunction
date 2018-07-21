##############################
### フラワーギフト飛翔時
##############################

execute if entity @s[tag=FlowerGift1] run scoreboard players set $Modifier Global 40
execute if entity @s[tag=FlowerGift2] run scoreboard players set $Modifier Global 30
execute if entity @s[tag=FlowerGift3] run scoreboard players set $Modifier Global 20
execute if entity @s[tag=FlowerGift4] run scoreboard players set $Modifier Global 10
execute as @e[distance=..5,tag=Mob,tag=!Gifted] at @s run function skill_manager:white_mage/flower_gift/apply
execute as @e[distance=..5,type=minecraft:spawner_minecart,tag=!Spawner,tag=!Gifted] at @s run function skill_manager:white_mage/flower_gift/apply

###---演出---Start
particle minecraft:dust -8000000 -8000000 -8000000 2 ~ ~ ~ 0 0 0 1 2 force
###---演出---End
