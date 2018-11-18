##############################
### はやぶさ斬り発動
##############################

###ダメージ計算
scoreboard players set $Damage Global 0
scoreboard players operation $Damage Global > @e[distance=..6,scores={DecrementTimer=10}] LastDamage

###スキルレベルによるダメージ補正
execute if score @s ModeSkill matches 11011 run scoreboard players operation $Damage Global *= $4 Const
execute if score @s ModeSkill matches 11012 run scoreboard players operation $Damage Global *= $12 Const
execute if score @s ModeSkill matches 11013 run scoreboard players operation $Damage Global *= $24 Const
execute if score @s ModeSkill matches 11014 run scoreboard players operation $Damage Global *= $84 Const
execute if score @s ModeSkill matches 11015 run scoreboard players operation $Damage Global *= $120 Const
function calc_manager:apply_damage_modifier

###ダメージ付与
execute positioned ^ ^ ^5 run scoreboard players operation @e[distance=..6,tag=Mob] Damage = $Damage Global
scoreboard players set $Timer Global 0
execute positioned ^ ^ ^5 as @e[distance=..6,tag=Mob] run function skill_manager:knight/falcon_slash/decorate/initialize
