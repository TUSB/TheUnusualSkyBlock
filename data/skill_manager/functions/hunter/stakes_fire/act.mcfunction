##############################
### ステークスファイア発動
##############################

###乱数取得
function calc_manager:update_random
scoreboard players operation $Random Global %= $1000 Const

#12 24 40 60 -> 15*0.80 30*0.80 50*0.80 50*0.90
scoreboard players set $Magnify Global 0
execute if score @s ModeSkill matches 31011 if score $Random Global matches ..799 run scoreboard players set $Magnify Global 15
execute if score @s ModeSkill matches 31012 if score $Random Global matches ..799 run scoreboard players set $Magnify Global 30
execute if score @s ModeSkill matches 31013 if score $Random Global matches ..799 run scoreboard players set $Magnify Global 50
execute if score @s ModeSkill matches 31014 if score $Random Global matches ..899 run scoreboard players set $Magnify Global 50

scoreboard players operation $ProjectileSkill Global = @s ModeSkill

execute as @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] run function skill_manager:hunter/stakes_fire/apply
