##############################
### ふかふかケージ経過
##############################

tag @e[distance=..5,type=!minecraft:player,type=!minecraft:armor_stand,type=!minecraft:area_effect_cloud,type=!minecraft:spawner_minecart,type=!minecraft:falling_block,tag=!Cage] add Caught
tag @e[distance=..5,tag=Caught] add DelayedTask

###向きランダム化
function calc_manager:set/random_rotation

###ぐるっと
function skill_manager:summoner/fukafuka/cage_loop
