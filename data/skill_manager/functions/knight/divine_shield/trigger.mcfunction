##############################
### リフレク
##############################

###ダメージ算出
execute if score @s ModeSkill matches 99994 run function skill_manager:knight/divine_shield/get_damage

execute if score @s ModeSkill matches 99994 run playsound minecraft:block.conduit.activate master @a ~ ~ ~ 3 2
execute if score @s ModeSkill matches 99994 anchored eyes positioned ^ ^ ^5 run scoreboard players operation @e[distance=..5,tag=Mob] Damage += $Damage Global
execute if score @s ModeSkill matches 99994 anchored eyes positioned ^ ^ ^5 run particle minecraft:dust 0.03125 0.9453125 0.97265625 1 ~ ~ ~ 2 2 2 1 300 force

###進捗トリガーリセット
advancement revoke @s only skill_manager:divine_shield
