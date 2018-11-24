##############################
### オーラ経過前処理
##############################

###スキル忘却
execute if score @s Job matches 2 as @a[distance=..32] at @s run tag @e[distance=..32,tag=HasSkill,tag=Mob] add ForgotSkill
###クリティカル倍率10倍
execute if score @s Job matches 3 run scoreboard players operation @a[distance=..32] CritRate *= $10 Const
###スキルレベル上昇
execute if score @s Job matches 7 as @a[distance=..32] run function skill_manager:aura/puppet_master/add
