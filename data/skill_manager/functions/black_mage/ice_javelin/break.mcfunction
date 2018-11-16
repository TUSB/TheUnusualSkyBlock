##############################
### アイスジャベリン消滅
##############################

###---演出---Start
particle minecraft:block minecraft:ice ~ ~ ~ 0.3 0.3 0.3 1 5 force
playsound minecraft:block.glass.break master @a ~ ~ ~ 10 0.5
###---演出---End

scoreboard players operation @e[dy=1,tag=Mob] Damage > @s SkillAttribute
execute as @e[dy=1,tag=Mob] positioned ~ ~2 ~ run function enemy_manager:knockback_weak

kill @s
