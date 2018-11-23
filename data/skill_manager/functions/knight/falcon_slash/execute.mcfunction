##############################
### はやぶさ斬り発動
##############################

###ダメージ取得
function calc_manager:target/melee/catch
execute as @e[tag=MeleeTarget,limit=1] run function calc_manager:target/last_damage
function calc_manager:target/melee/release
scoreboard players operation $Damage Global = $LastDamage Global

###高ダメージ時の補正
scoreboard players remove $Damage Global 20000
scoreboard players operation $Damage Global /= $10 Const
scoreboard players add $Damage Global 20000
scoreboard players operation $Damage Global < $LastDamage Global

###スキルレベルによるダメージ補正
execute if score @s ModeSkill matches 11011 run scoreboard players operation $Damage Global *= $5 Const
execute if score @s ModeSkill matches 11012 run scoreboard players operation $Damage Global *= $10 Const
execute if score @s ModeSkill matches 11013 run scoreboard players operation $Damage Global *= $13 Const
execute if score @s ModeSkill matches 11014 run scoreboard players operation $Damage Global *= $20 Const
execute if score @s ModeSkill matches 11015 run scoreboard players operation $Damage Global *= $35 Const
function calc_manager:apply_damage_modifier

###ダメージ付与
execute positioned ^ ^ ^5 run scoreboard players operation @e[distance=..6,tag=Mob] Damage = $Damage Global
scoreboard players set $Timer Global 0
execute positioned ^ ^ ^5 as @e[distance=..6,tag=Mob] run function skill_manager:knight/falcon_slash/decorate/initialize
