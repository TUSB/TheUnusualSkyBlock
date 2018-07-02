##############################
### はやぶさ斬り発動
##############################

###ダメージ計算
scoreboard players set $Damage Global 0
execute positioned ^ ^ ^5 as @e[distance=..6,tag=Mob] run function skill_manager:knight/falcon_slash/calc_damage

###スキルレベルによるダメージ補正
execute if score @s ModeSkill matches 11011 run scoreboard players operation $Damage Global *= $20 Const
execute if score @s ModeSkill matches 11012 run scoreboard players operation $Damage Global *= $40 Const
execute if score @s ModeSkill matches 11013 run scoreboard players operation $Damage Global *= $60 Const
execute if score @s ModeSkill matches 11014 run scoreboard players operation $Damage Global *= $80 Const
execute if score @s ModeSkill matches 11015 run scoreboard players operation $Damage Global *= $100 Const

###ダメージ付与
execute positioned ^ ^ ^5 run scoreboard players operation @e[distance=..6,tag=Mob] FalconDamage = $Damage Global
scoreboard players set $Timer Global 0
execute positioned ^ ^ ^5 as @e[distance=..6,tag=Mob] run function skill_manager:knight/falcon_slash/set_timer
