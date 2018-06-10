##############################
### はやぶさ斬り発動
##############################

###ダメージ計算
scoreboard players set $Damage Global 0
execute positioned ^ ^ ^2.5 run scoreboard players operation $Damage Global > @e[distance=..2.5,tag=Mob,nbt={HurtTime:10s}] FalconHP
execute positioned ^ ^ ^2.5 as @e[distance=..2.5,tag=Mob,nbt={HurtTime:10s}] store result score @s FalconHP run data get entity @s AbsorptionAmount 10
scoreboard players set $Health Global 2147483647
execute positioned ^ ^ ^2.5 run scoreboard players operation $Health Global < @e[distance=..2.5,tag=Mob,nbt={HurtTime:10s}] FalconHP
scoreboard players operation $Damage Global -= $Health Global

###スキルレベルによるダメージ補正
execute if score @s ModeSkill matches 999931 run scoreboard players operation $Damage Global *= $10 Const
execute if score @s ModeSkill matches 999932 run scoreboard players operation $Damage Global *= $20 Const
execute if score @s ModeSkill matches 999933 run scoreboard players operation $Damage Global *= $40 Const
execute if score @s ModeSkill matches 99993 run scoreboard players operation $Damage Global *= $70 Const
execute if score @s ModeSkill matches 999935 run scoreboard players operation $Damage Global *= $110 Const

###ダメージ付与

execute positioned ^ ^ ^5 run scoreboard players operation @e[distance=..5,tag=Mob] FalconDamage = $Damage Global
scoreboard players set $Timer Global 0
execute positioned ^ ^ ^5 as @e[distance=..5,tag=Mob] run function skill_manager:knight/falcon_slash/set_timer

###演出
