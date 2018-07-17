##############################
### ステークスファイア発動
##############################

###乱数取得
function calc_manager:update_random
scoreboard players operation $Random Global %= $1000 Const

#5 25 75 200 -> 10*0.5=5 40*0.625 100*0.75 250*0.8
scoreboard players set $Magnify Global 0
execute if score @s ModeSkill matches 31011 if score $Random Global matches ..500 run scoreboard players set $Magnify Global 10
execute if score @s ModeSkill matches 31012 if score $Random Global matches ..625 run scoreboard players set $Magnify Global 40
execute if score @s ModeSkill matches 31013 if score $Random Global matches ..750 run scoreboard players set $Magnify Global 100
execute if score @s ModeSkill matches 31014 if score $Random Global matches ..800 run scoreboard players set $Magnify Global 250

scoreboard players operation $ProjectileSkill Global = @s ModeSkill

execute as @e[distance=..5,type=minecraft:arrow,tag=!Initialized,sort=nearest,limit=1] run function skill_manager:hunter/stakes_fire/apply
