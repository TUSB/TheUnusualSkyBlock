##############################
### 効果選択
##############################


execute if entity @s[tag=DoomAttack] unless score @s DoomCount matches 1..31 run function enemy_manager:occurrence/invisible/doom
execute if entity @s[tag=SuperDoomAttack] unless score @s DoomCount matches 1..13 run function enemy_manager:occurrence/invisible/super_doom
execute if entity @s[tag=BurnAttack] unless entity @s[tag=Burn] run function enemy_manager:occurrence/invisible/burn
execute if entity @s[tag=DebilityAttack] run function enemy_manager:occurrence/invisible/debility
execute if entity @s[tag=VirusAttack] unless score @s VirusCount matches 0.. run function enemy_manager:occurrence/invisible/virus
execute if entity @s[tag=CurseAttack] unless entity @s[tag=Curse] run function enemy_manager:occurrnce/invisible/curse
execute if entity @s[tag=ConfuseAttack] unless score @s ConfuseCount matches 0.. run function enemy_manager:occurrence/invisible/confuse
execute if entity @s[tag=TerrorAttack] unless score @s TerrorLevel matches 0.. run function enemy_manager:occurrence/invisible/terror
execute if entity @s[tag=TNTAttackLv1] unless score @s TntCount matches 0.. run function enemy_manager:occurrence/invisible/tnt/1