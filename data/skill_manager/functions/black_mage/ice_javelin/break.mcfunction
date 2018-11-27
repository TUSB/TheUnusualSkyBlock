##############################
### アイスジャベリン消滅
##############################

###---演出---Start
particle minecraft:block minecraft:ice ~ ~ ~ 0.3 0.3 0.3 1 10 force @a[tag=ShowParticles]
execute as @a[distance=..32] run stopsound @s master minecraft:block.glass.break
execute as @a[distance=..32] at @s run playsound minecraft:block.glass.break master @s ~ ~64 ~ 8 0.5
###---演出---End

scoreboard players operation $Damage Global = @s SkillAttribute
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=2,dz=1,tag=Mob] run scoreboard players operation @s Damage > $Damage Global
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=2,dz=1,tag=Mob] positioned ~ ~2 ~ run function enemy_manager:knockback_weak

kill @s
