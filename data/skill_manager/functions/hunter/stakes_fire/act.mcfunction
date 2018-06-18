##############################
### ステークスファイア発動
##############################

###乱数取得
function calc_manager:update_random

scoreboard players set $Magnify Global 0
execute if score @s ModeSkill matches 31011 if score $Random Global matches 32768.. run scoreboard players set $Magnify Global 10
execute if score @s ModeSkill matches 31012 if score $Random Global matches 21845.. run scoreboard players set $Magnify Global 15
execute if score @s ModeSkill matches 31013 if score $Random Global matches 16384.. run scoreboard players set $Magnify Global 20
execute if score @s ModeSkill matches 31014 if score $Random Global matches 13107.. run scoreboard players set $Magnify Global 25

execute store result score $Damage Global run data get entity @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] damage 10
scoreboard players operation $Damage Global *= $Magnify Global
execute store result entity @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] damage double 0.1 run scoreboard players get $Damage Global

execute if score $Magnify Global matches ..0 run tag @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] add StakesFailed
execute if score $Magnify Global matches 1.. run tag @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] add StakesSucceeded

###飛翔物スコア付与
scoreboard players operation $ProjectileSkill Global = @s ModeSkill
execute as @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] if entity @s[tag=StakesSucceeded] run scoreboard players operation @s ProjectileSkill = $ProjectileSkill Global
